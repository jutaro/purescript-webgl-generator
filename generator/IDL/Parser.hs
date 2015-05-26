module IDL.Parser (parseIdl) where

import Control.Monad (liftM)
import Data.Functor.Identity (Identity(..))
import Data.List (nub)

import qualified Text.Parsec.Token                      as PP
import qualified Text.Parsec                            as PP
import qualified Text.Parsec.Error                      as PP
import qualified Text.ParserCombinators.Parsec.Language as PP
import qualified Text.ParserCombinators.Parsec          as PP (Parser)

import IDL.AST

type Parse a = PP.Parsec String () a

symbol'     = PP.symbol     lexer
whiteSpace' = PP.whiteSpace lexer
identifier' = PP.identifier lexer
integer'    = PP.integer    lexer
semi'       = PP.semi       lexer
parens'     = PP.parens     lexer
brackets'   = PP.brackets   lexer
angles'     = PP.angles     lexer

webglTypes :: [String]
webglTypes =
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
    , "any"
    , "boolean"
    , "object"
    , "sequence"
    , "void"
    ]

lexer :: PP.GenTokenParser String u Identity
lexer = PP.makeTokenParser PP.emptyDef

parseIdl :: Parse IDL
parseIdl =
    parseDecls >>=
    return . foldr partition emptyIdl >>=
    return . cleanup

-- helpers

partition :: Decl -> IDL -> IDL
partition e@Enum{} idl = idl
    { enums = e : enums idl
    }
partition c@Comment{} idl = idl
    { comments = c : comments idl
    }
partition f@Function{} idl = idl
    { functions = f : functions idl
    , types = methodRetType f : map argType (methodArgs f) ++ types idl
    }
partition a@Attribute{} idl = idl
    { attributes = a : attributes idl
    , types = attrType a : types idl
    }

cleanup :: IDL -> IDL
cleanup idl = IDL
    { enums = nub $ enums idl
    , comments = nub $ comments idl
    , functions = nub $ functions idl
    , attributes = nub $ attributes idl
    , types = nub . filter (\t -> typeName t `notElem` webglTypes) $ types idl
    }

-- parsers

parseDecls :: Parse [Decl]
parseDecls =
    PP.manyTill (whiteSpace' >> parseDecl) PP.eof PP.<?> "expecting idl"

parseDecl :: Parse Decl
parseDecl = decl PP.<?> "expecting decl"
  where
    decl = PP.try parseConst   PP.<|>
           PP.try parseComment PP.<|>
           PP.try parseMethod  PP.<|>
           PP.try parseAttr

parseConst :: Parse Decl
parseConst = do
    symbol' "const"
    symbol' "GLenum"
    name <- identifier'
    symbol' "="
    value <- integer'
    semi'
    return Enum
      { enumName  = name
      , enumValue = value
      }

parseComment :: Parse Decl
parseComment = do
    symbol' "/*"
    comment <- PP.manyTill PP.anyChar $ symbol' "*/"
    return Comment
      { comment = comment
      }

parseMethod :: Parse Decl
parseMethod = do
    returnType <- parseType
    methodName <- identifier'
    args <- parens' . PP.sepBy parseArg $ symbol' ","
    condRaises <- PP.option Nothing parseRaises
    semi'
    return Function
      { methodName    = methodName
      , methodRetType = returnType
      , methodArgs    = args
      , methodRaises  = condRaises
      }

parseAttr :: Parse Decl
parseAttr = do
    isReadonly <- PP.option False $ symbol' "readonly" >> return True
    symbol' "attribute"
    typ <- parseType
    name <- identifier'
    semi'
    return Attribute
      { attrIsReadonly = isReadonly
      , attrType       = typ
      , attrName       = name
      }

parseType :: Parse Type
parseType = typ PP.<?> "expecting type"
  where
    typ = do
        ident <- identifier'
        isArray <- PP.option False $ brackets' whiteSpace' >> return True
        condPara <-
          if ident == "sequence"
          then angles' identifier' >>= return . Just
          else return Nothing
        return Type
          { typeName     = ident
          , typeIsArray  = isArray
          , typeCondPara = condPara
          }

parseArg :: Parse Arg
parseArg = do
    typ <- parseType
    name <- identifier'
    return Arg
      { argType = typ
      , argName = name
      }

parseRaises :: Parse (Maybe String)
parseRaises = do
    symbol' "raises"
    liftM Just $ parens' identifier'
