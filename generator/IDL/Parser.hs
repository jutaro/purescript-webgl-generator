module IDL.Parser (parseDecls) where

import Control.Monad (liftM)
import Data.Functor.Identity (Identity(..))

import qualified Text.Parsec.Token                      as Par
import qualified Text.Parsec                            as Par
import qualified Text.Parsec.Error                      as Par
import qualified Text.ParserCombinators.Parsec.Language as Par
import qualified Text.ParserCombinators.Parsec          as Par (Parser)

import IDL.AST

type Parse a = Par.Parsec String () a

-- constants

symbol'     = Par.symbol     lexer
whiteSpace' = Par.whiteSpace lexer
identifier' = Par.identifier lexer
integer'    = Par.integer    lexer
semi'       = Par.semi       lexer
parens'     = Par.parens     lexer
brackets'   = Par.brackets   lexer
angles'     = Par.angles     lexer

lexer :: Par.GenTokenParser String u Identity
lexer = Par.makeTokenParser Par.emptyDef

-- public functions

parseDecls :: Parse [Decl]
parseDecls =
    Par.manyTill (whiteSpace' >> parseDecl) Par.eof Par.<?> "expecting idl"

-- private functions

parseDecl :: Parse Decl
parseDecl = decl Par.<?> "expecting decl"
  where
    decl = Par.try parseConst   Par.<|>
           Par.try parseComment Par.<|>
           Par.try parseMethod  Par.<|>
           Par.try parseAttr    Par.<|>
           Par.try parseTypedef

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
parseComment = inlineComment Par.<|> blockComment
  where
    inlineComment = Par.try $ do
        symbol' "//"
        comment <- Par.manyTill Par.anyChar Par.newline
        Par.optional whiteSpace'
        return Comment { comment = comment }
    blockComment = do
        symbol' "/*"
        comment <- Par.manyTill Par.anyChar $ symbol' "*/"
        return Comment { comment = comment }

parseMethod :: Parse Decl
parseMethod = do
    Par.optional $ symbol' "[WebGLHandlesContextLoss]"
    returnType <- parseType
    methodName <- identifier'
    args <- parens' . Par.sepBy parseArg $ symbol' ","
    condRaises <- Par.option Nothing parseRaises
    semi'
    return Function
      { methodName    = methodName
      , actualName    = methodName
      , methodRetType = returnType
      , methodArgs    = args
      , methodRaises  = condRaises
      }

parseAttr :: Parse Decl
parseAttr = do
    isReadonly <- Par.option False $ symbol' "readonly" >> return True
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
    Par.manyTill Par.anyChar semi'
    return Typedef


parseType :: Parse Type
parseType = typ Par.<?> "expecting type"
  where
    arrayName = do
        symbol' "sequence"
        name <- angles' identifier'
        return (name, True)
    singleName = do
        name <- identifier'
        return (name, False)
    typ = do
        (name, isArray) <- Par.try arrayName Par.<|> singleName
        isMaybe <- Par.option False $ symbol' "?" >> return True
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
