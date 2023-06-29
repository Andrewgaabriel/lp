module Main where

import Lexer
import Parser
import TypeChecker
import Interpreter

main = getContents >>= print . eval . typecheck . parser . lexer

teste :: IO ()
teste = do
    contents <- readFile "test.and"
    print . eval . typecheck . parser . lexer $ contents