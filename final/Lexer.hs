module Lexer where

import Data.Char

-- Árvore
data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | And Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | If Expr Expr Expr
          | Or Expr Expr
          | Xor Expr Expr
          deriving (Show, Eq) 

data Ty = TBool
        | TNum
        deriving (Show, Eq)




data Token = TokenTrue
          |  TokenFalse
          |  TokenNum Int
          |  TokenAdd
          |  TokenSub
          |  TokenMul
          |  TokenAnd
          |  TokenOr
          |  TokenXor
          |  TokenIf
          |  TokenThen
          |  TokenElse
          deriving (Show, Eq)




isToken :: Char -> Bool
isToken c =  c `elem` "+-*&|^"

lexer :: String -> [Token]
lexer [] = []
lexer (c:cs) | isSpace c = lexer cs
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKW (c:cs)
             | isToken c = lexSymbol (c:cs)
             | otherwise = error "Lexical error: invalid token!"



lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest


lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
              ("true", rest) -> TokenTrue : lexer rest
              ("false", rest) -> TokenFalse : lexer rest
              ("if", rest) -> TokenIf : lexer rest
              ("then", rest) -> TokenThen : lexer rest
              ("else", rest) -> TokenElse : lexer rest
              _ -> error "Lexical error: invalid keyword!"


lexSymbol :: String -> [Token]
lexSymbol cs = case span isToken cs of
                ("+", rest) -> TokenAdd : lexer rest
                ("-", rest) -> TokenSub : lexer rest
                ("*", rest) -> TokenMul : lexer rest
                ("&&", rest) -> TokenAnd : lexer rest
                ("||", rest) -> TokenOr : lexer rest
                ("^", rest) -> TokenXor : lexer rest
                _ -> error "Lexical error: invalid symbol!"

                

              

      