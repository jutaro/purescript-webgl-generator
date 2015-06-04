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
    , "object"
    , "sequence"
    , "void"
    ]

lexer :: PP.GenTokenParser String u Identity
lexer = PP.makeTokenParser PP.emptyDef

parseIdl :: Parse IDL
parseIdl = parseDecls >>= return . cleanup . foldr partition emptyIdl . nub

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
    , types = methodRetType f : map argType (funcArgs f) ++ types idl
    }
partition a@Attribute{} idl = idl
    { attributes = a : attributes idl
    , types = attrType a : types idl
    }
partition _ idl = idl

cleanup :: IDL -> IDL
cleanup idl = idl { types = nub . filter onlyAllowedTypes $ types idl }
  where
    onlyAllowedTypes Concrete{ typeName = t } = t `notElem` excludedTypes
    onlyAllowedTypes _                        = False

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
           PP.try parseAttr    PP.<|>
           PP.try parseTypedef

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
parseComment = inlineComment PP.<|> blockComment
  where
    inlineComment = PP.try $ do
        symbol' "//"
        comment <- PP.manyTill PP.anyChar PP.newline
        PP.optional whiteSpace'
        return Comment { comment = comment }
    blockComment = do
        symbol' "/*"
        comment <- PP.manyTill PP.anyChar $ symbol' "*/"
        return Comment { comment = comment }

parseMethod :: Parse Decl
parseMethod = do
    PP.optional $ symbol' "[WebGLHandlesContextLoss]"
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

parseTypedef :: Parse Decl
parseTypedef = do
    symbol' "typedef"
    PP.manyTill PP.anyChar semi'
    return Typedef


parseType :: Parse Type
parseType = typ PP.<?> "expecting type"
  where
    arrayName = do
        symbol' "sequence"
        name <- angles' identifier'
        return (name, True)
    singleName = do
        name <- identifier'
        return (name, False)
    typ = do
        (name, isArray) <- PP.try arrayName PP.<|> singleName
        isMaybe <- PP.option False $ symbol' "?" >> return True
        return $
          if name `elem` ["any", "object"]
          then Generic
          else Concrete
            { typeName     = name
            , typeIsArray  = isArray
            , typeIsMaybe' = isMaybe
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
