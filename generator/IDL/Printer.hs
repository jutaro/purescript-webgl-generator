{-# LANGUAGE OverloadedStrings #-}

module IDL.Printer
( typesFFI
, enumsFFI
, exportsFFI
, importsFFI
) where

import Data.Char (toLower, toUpper)
import Data.Maybe (isNothing)
import IDL.Cleaner (getEnums, getFuncs, getTypes)
import Text.PrettyPrint (Doc, ($+$), ($$), (<>), (<+>), char, empty,
  hcat, int, integer, nest, parens, punctuate, text, vcat)

import IDL.AST

typesFFI :: IDL -> Doc
typesFFI idl =
    header       $+$ blank $+$
    typeDefs     $+$ blank $+$
    typeDecls    $+$ blank $+$
    contextAttrs $+$ blank
  where
    header = vcat
      [ "module Graphics.WebGL.Raw.Types where"
      , ""
      , "import Data.ArrayBuffer.Types"
      ]
    typeDecls = vcat . map ppTypeDecl $ getTypes idl

enumsFFI :: IDL -> Doc
enumsFFI idl =
    header    $+$ blank $+$
    constants $+$ blank
  where
    header = vcat
      [ "module Graphics.WebGL.Raw.Enums where"
      , ""
      , "import Graphics.WebGL.Raw.Types (GLenum ())"
      ]
    constants = vcat . map ppConstant $ getEnums idl

exportsFFI :: IDL -> Doc
exportsFFI idl =
    header  $+$ blank $+$
    methods $+$ blank
  where
    header = vcat
      [ "\"use strict\";"
      , ""
      , "// module Graphics.WebGL.Raw"
      ]
    methods = vcat . map ppJsFunc $ getFuncs idl

importsFFI :: IDL -> Doc
importsFFI idl =
    header  $+$ blank $+$
    funcs   $+$ blank
  where
    header = vcat
      [ "module Graphics.WebGL.Raw"
      , expList
      , ") where"
      , ""
      , "import Control.Monad.Eff"
      , "import Data.ArrayBuffer.Types"
      , "import Data.Function"
      , "import Data.Maybe"
      , "import Graphics.Canvas"
      , "import Graphics.WebGL.Raw.Types"
      , "import Graphics.WebGL.Raw.Util"
      , "import Prelude"
      ]
    expList = ppExportList $ getFuncs idl
    funcs = vcat . map ppImport $ getFuncs idl

-- predefined text

typeDefs :: Doc
typeDefs = vcat
    [ "type DOMString        = String"
    , "type BufferDataSource = Float32Array"
    , "type FloatArray       = Float32Array"
    , "type GLbitfield       = Int"
    , "type GLboolean        = Boolean"
    , "type GLbyte           = Int"
    , "type GLclampf         = Number"
    , "type GLenum           = Int"
    , "type GLfloat          = Number"
    , "type GLint            = Int"
    , "type GLintptr         = Int"
    , "type GLshort          = Int"
    , "type GLsizei          = Int"
    , "type GLsizeiptr       = Int"
    , "type GLubyte          = Int"
    , "type GLuint           = Int"
    , "type GLushort         = Int"
    ]

contextAttrs :: Doc
contextAttrs = vcat
    [ "type WebGLContextAttributes ="
    , "  { alpha                           :: Boolean"
    , "  , depth                           :: Boolean"
    , "  , stencil                         :: Boolean"
    , "  , antialias                       :: Boolean"
    , "  , premultipliedAlpha              :: Boolean"
    , "  , preserveDrawingBuffer           :: Boolean"
    , "  , preferLowPowerToHighPerformance :: Boolean"
    , "  , failIfMajorPerformanceCaveat    :: Boolean"
    , "  }"
    ]

-- javascript pretty-printers

ppJsFunc :: Decl -> Doc
ppJsFunc f =
    expName <+> "=" <+> func <+> parens (ppJsArgs funcArgs f) <+> "{" $+$
    nest 2 (ret <+> func <+> "() {") $+$
    nest 4 (ret <+> ppJsFuncInner f) $+$
    nest 2 "};" $+$
    "}" $+$
    blank
  where
    expName = "exports." <> implName f
    func = "function"
    ret  = "return"

ppJsFuncInner :: Decl -> Doc
ppJsFuncInner f@Function{} =
    prefixWebgl <> text (actualName f) <> parens (ppJsArgs methodArgs f) <> ";"

ppJsArgs :: (Decl -> [Arg]) -> Decl -> Doc
ppJsArgs f = hcat . punctuate ", " . map (text . argName) . f

-- purescript raw module pretty-printers

ppExportList :: [Decl] -> Doc
ppExportList = vcat . addOpener . prePunct (", ") . map (text . methodName)
  where
    addOpener (x:xs) = "(" <+> x : xs
    addOpener xs     = xs

ppImport :: Decl -> Doc
ppImport f@Function{} =
    ppImpl f $+$ blank $+$
    ppFunc f $+$ blank

ppConvertType :: Type -> Doc
ppConvertType Concrete{ typeName = name, typeIsArray = isArray }
    | name == "void"        = toType "Unit"
    | name == "boolean"     = toType "Boolean"
    | name == "ArrayBuffer" = toType "Float32Array"
    | name == "long"        = toType "Int"
    | otherwise             = toType name
  where
    toType = wrapArray . text
    wrapArray t = if isArray
                  then parens $ "Array" <+> t
                  else t
ppConvertType _ = genericType

ppSigForall :: Decl -> Doc
ppSigForall Function{ methodRetType = ret } =
    case ret of
      Generic -> ":: forall eff" <+> genericType <> "."
      _       -> ":: forall eff."

-- purescript impl pretty-printers

ppImpl :: Decl -> Doc
ppImpl f@Function{} = "foreign import" <+> implName f <+> ppImplTypeSig f

ppImplTypeSig :: Decl -> Doc
ppImplTypeSig f@Function{} =
    ppSigForall f <+> funcType <+> argList <+> parens (ppImplReturnType f)
  where
    args = funcArgs f
    funcType = "Fn" <> int (length args)
    argList = hcat . punctuate " " $ map (ppConvertType . argType) args

ppImplReturnType :: Decl -> Doc
ppImplReturnType fn = effMonad <+> ppConvertType (methodRetType fn)

-- purescript function pretty-printers

ppFunc :: Decl -> Doc
ppFunc f@Function{} = ppFuncTypeSig f $+$ ppFuncDef f

ppFuncTypeSig :: Decl -> Doc
ppFuncTypeSig f@Function{ methodName = name } =
    text name <+> ppSigForall f <+> argList
  where
    types = map (ppConvertType . argType) (funcArgs f) ++ [ppFuncReturnType f]
    argList = hcat $ punctuate " -> " types

ppFuncDef :: Decl -> Doc
ppFuncDef f@Function { methodName = name, methodRetType = retType } =
    text name <+> args <+> "=" <+>
    "runFn" <> int (length $ funcArgs f) <+>
    implName f <+> args <+>
    safetyFn retType
  where
    args = ppFuncArgs f

ppFuncArgs :: Decl -> Doc
ppFuncArgs = hcat . punctuate " " . map argNames . funcArgs
  where
    argNames = text . filterReserved . argName

ppFuncReturnType :: Decl -> Doc
ppFuncReturnType fn = effMonad <+> ppConvertMaybeType (methodRetType fn)

ppConvertMaybeType :: Type -> Doc
ppConvertMaybeType t = wrapMaybe $ ppConvertType t
  where
    wrapMaybe name = if typeIsMaybe t then parens ("Maybe" <+> name) else name

-- purecript enum pretty-printers

ppConstant :: Decl -> Doc
ppConstant Enum { enumName = n, enumValue = v } =
    constName <+> ":: GLenum" $$
    constName <+> "=" <+> (integer v) $$
    blank
  where
    constName = toCamelCase n

-- purescript typedef pretty-printers

ppTypeDecl :: Type -> Doc
ppTypeDecl Concrete{ typeName = name } =
  "foreign import data" <+> text name <+> ":: *"
ppTypeDecl _ = empty

-- helpers

blank :: Doc
blank = ""

effMonad :: Doc
effMonad = "Eff (canvas :: Canvas | eff)"

genericType :: Doc
genericType = char 'a'

implName :: Decl -> Doc
implName f@Function{} = text (methodName f) <> "Impl"

prefixWebgl :: Doc
prefixWebgl = text (argName webglContext) <> "."

prePunct :: Doc -> [Doc] -> [Doc]
prePunct p (x:x':xs) = x : go x' xs
  where
    go y [] = [p <> y]
    go y (z:zs) = (p <> y) : go z zs
prePunct _ xs = xs

toCamelCase :: String -> Doc
toCamelCase = text . foldr go ""
  where
    go '_' (l:ls) = toUpper l : ls
    go l ls       = toLower l : ls

safetyFn :: Type -> Doc
safetyFn t@Concrete{}
    | typeIsMaybe t = ">>= toMaybe >>> return"
    | typeIsArray t = ">>= nullAsEmpty >>> return"
    | otherwise     = empty
safetyFn t@Generic  = ">>= toMaybe >>> return"

filterReserved :: String -> String
filterReserved s = case s of
    "data"  -> "data'"
    "where" -> "where'"
    "type"  -> "type'"
    ok      -> ok
