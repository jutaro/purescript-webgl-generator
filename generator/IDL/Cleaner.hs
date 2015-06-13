module IDL.Cleaner
( declsToIdl
, getEnums
, getFuncs
, getTypes
) where

import Data.List (foldl')

import qualified Data.Map as Map

import IDL.AST

-- constants

excludedTypes :: [String]
excludedTypes =
    [ "ArrayBuffer"
    , "DOMString"
    , "Float32Array"
    , "FloatArray"
    , "GLbitfield"
    , "GLboolean"
    , "GLbyte"
    , "GLclampf"
    , "GLenum"
    , "GLfloat"
    , "GLint"
    , "GLintptr"
    , "GLshort"
    , "GLsizei"
    , "GLsizeiptr"
    , "GLubyte"
    , "GLuint"
    , "GLushort"
    , "HTMLCanvasElement"
    , "Int32Array"
    , "WebGLContextAttributes"
    , "any"
    , "boolean"
    , "long"
    , "object"
    , "sequence"
    , "void"
    ]

-- public functions

declsToIdl :: [Decl] -> IDL
declsToIdl = cleanup . foldr partition emptyIdl

getTypes :: IDL -> [Type]
getTypes =  map snd . Map.toList . types

getEnums :: IDL -> [Decl]
getEnums = map snd . Map.toList . enums

getFuncs :: IDL -> [Decl]
getFuncs = map snd . Map.toList . functions

-- private functions

partition :: Decl -> IDL -> IDL
partition e@Enum{} idl = idl
    { enums = Map.insert (enumName e) e (enums idl)
    }
partition f@Function{} idl = idl
    { functions = underscore f $ functions idl
    , types = insertFuncTypes f $ types idl
    }
partition _ idl = idl

underscore :: Decl -> Map.Map String Decl -> Map.Map String Decl
underscore f fs
    | Map.member name fs = underscore (f { methodName = name ++ "_" }) fs
    | otherwise          = Map.insert name f fs
  where
    name = methodName f

insertFuncTypes :: Decl -> Map.Map String Type -> Map.Map String Type
insertFuncTypes f types = foldl' insert types ftypes
  where
    ftypes = methodRetType f : map argType (funcArgs f)
    insert ts Generic = ts
    insert ts t = Map.insert (typeName t) t ts

cleanup :: IDL -> IDL
cleanup idl = idl { types = removeExcluded $ types idl }
  where
    removeExcluded types = foldl' (flip Map.delete) types excludedTypes
