module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitSuccess)
import System.IO (writeFile)
import Debug.Trace (trace)
import Text.PrettyPrint (render)

import qualified Text.Parsec as PP (runParser)
import qualified Text.Parsec.Error as PP

import IDL.AST
import IDL.Parser
import IDL.Printer

noIdlError :: String
noIdlError = "WebGL generator requires input IDL file"

main :: IO ()
main = getArgs >>= getFilepath >>= readFile >>= runParser

getFilepath :: [String] -> IO String
getFilepath (fp:_) = return fp
getFilepath _ = putStrLn noIdlError >> exitSuccess

runParser :: String -> IO ()
runParser body =
    case PP.runParser parseIdl () "" body of
      Left err  -> mapM_ (putStrLn . PP.messageString) (PP.errorMessages err)
      Right idl -> printFiles idl

printFiles :: IDL -> IO ()
printFiles idl = do
    writeFile "src/Graphics/WebGL/Raw/Types.purs" . render $ typesFFI idl
    writeFile "src/Graphics/WebGL/Raw/Enums.purs" . render $ enumsFFI idl
    writeFile "src/Graphics/WebGL/Raw.purs"       . render $ funcsFFI idl
