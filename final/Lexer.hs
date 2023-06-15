module Lexer where

import Data.Char

-- Árvore
data Expr = BTrue
          | BFalse
          | Num Int
          | Records [(String, Expr)]
          | Add Expr Expr
          | And Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | If Expr Expr Expr
          | Or Expr Expr
          | Xor Expr Expr
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | GetFromRecord Expr String
          deriving (Show, Eq) 



-- Exemplos de expressões usando Records sem o GetFromRecord

-- Records [("a", Num 1), ("b", Num 2), ("c", Num 3)] = ("<label>", <expr>)
-- Records [("a", Num 1), ("b", Num 2), ("c", Num 3)].a = Num 1
-- Records [("a", Num 1), ("b", Num 2), ("c", Num 3)].b = Num 2
-- Records [("a", Num 1), ("b", Num 2), ("c", Num 3)].c = Num 3
-- Records [("a", Num 1), ("b", Num 2), ("c", Num 3)].d = error "Label not found!"
-- Add (Num 1) (Records [("a", Num 1), ("b", Num 2), ("c", Num 3)].c) = Add (Num 1) (Num 3)


-- DÚVIDA --
-- Records [("a", Num 1), ("b", Num 2), ("soma", Add (Num 1) (Num 2))].soma = Add (Num 1) (Num 2)
-- ou
-- Records [("a", Num 1), ("b", Num 2), ("soma", Add (Num 1) (Num 2))].soma = Num 3

-- Exemplos de expressões usando Records com o GetFromRecord


-- GetFromRecord (Records [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "a" = Num 1
-- GetFromRecord (Records [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "b" = Num 2
-- GetFromRecord (Records [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "c" = Num 3
-- GetFromRecord (Records [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "d" = error "Label not found!"





data Ty = TBool
        | TNum
        | TRecord
        | TFun Ty Ty
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

                

              

      