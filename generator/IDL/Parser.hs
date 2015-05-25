module IDL.Parser (idlParser) where

import Control.Monad (liftM)
import Data.Functor.Identity (Identity(..))

import qualified Text.Parsec.Token                      as PP
import qualified Text.Parsec                            as PP
import qualified Text.Parsec.Error                      as PP
import qualified Text.ParserCombinators.Parsec.Language as PP
import qualified Text.ParserCombinators.Parsec          as PP (Parser)

import IDL.AST

type Parse a = PP.Parsec String () a

trace _ b = b

symbol'     = PP.symbol     lexer
whiteSpace' = PP.whiteSpace lexer
identifier' = PP.identifier lexer
integer'    = PP.integer    lexer
semi'       = PP.semi       lexer
parens'     = PP.parens     lexer
brackets'   = PP.brackets   lexer
angles'     = PP.angles     lexer

idlParser :: Parse Idl
idlParser =
    PP.manyTill decls PP.eof PP.<?> "expecting idl"
  where
    decls = do
        whiteSpace'
        d <- declParser
        trace ("decl: " ++ show d) (return d)

lexer :: PP.GenTokenParser String u Identity
lexer = PP.makeTokenParser PP.emptyDef

-- parsers

declParser :: Parse Decl
declParser = decl PP.<?> "expecting decl"
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
      { attIsReadonly = isReadonly
      , attType       = typ
      , attName       = name
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
