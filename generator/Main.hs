module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitSuccess)
import Debug.Trace (trace)
import Text.PrettyPrint (render)

import qualified Text.Parsec as PP (runParser)
import qualified Text.Parsec.Error as PP

import IDL.AST
import IDL.Parser
import IDL.Printer

main :: IO ()
main = getArgs >>= getFilepath >>= readFile >>= runParser

noIdlError :: String
noIdlError = "WebGL generator requires input IDL file"

getFilepath :: [String] -> IO String
getFilepath (fp:_) = return fp
getFilepath _ = putStrLn noIdlError >> exitSuccess

runParser :: String -> IO ()
runParser body =
    case PP.runParser parseIdl () "" body of
      Left err  -> mapM_ (putStrLn . PP.messageString) (PP.errorMessages err)
      Right idl -> putStr . render $ ppPureScriptFFI idl
