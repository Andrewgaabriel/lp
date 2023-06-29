module Lexer where

import Data.Char

-- data Record = Record [(String, Expr)] deriving (Show, Eq)

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
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | Record [(String, Expr)]
          | ProjRecord Expr String
          | Let String Expr Expr
          | Maior Expr Expr
          | Menor Expr Expr
          | Igual Expr Expr
          | Not Expr
          deriving (Show, Eq) 



-- Exemplos de expressões usando Record sem o GetFromRecord

-- Record [("a", Num 1), ("b", Num 2), ("c", Num 3)] 


-- Record [("a", Num 1), ("b", Num 2), ("c", Num 3)] = Num 1


-- = ("<label>", <expr>)
-- Record [("a", Num 1), ("b", Num 2), ("c", Num 3)].b = Num 2
-- Record [("a", Num 1), ("b", Num 2), ("c", Num 3)].c = Num 3
-- Record [("a", Num 1), ("b", Num 2), ("c", Num 3)].d = error "Label not found!"
-- Add (Num 1) (Record [("a", Num 1), ("b", Num 2), ("c", Num 3)].c) = Add (Num 1) (Num 3)


-- DÚVIDA --
-- Record [("a", Num 1), ("b", Num 2), ("soma", Add (Num 1) (Num 2))].soma = Add (Num 1) (Num 2)
-- ou
-- Record [("a", Num 1), ("b", Num 2), ("soma", Add (Num 1) (Num 2))].soma = Num 3

-- Exemplos de expressões usando Record com o GetFromRecord


-- GetFromRecord (Record [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "a" = Num 1
-- GetFromRecord (Record [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "b" = Num 2
-- GetFromRecord (Record [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "c" = Num 3
-- GetFromRecord (Record [("a", Num 1), ("b", Num 2), ("c", Num 3)]) "d" = error "Label not found!"





data Ty = TBool
        | TNum
        | TRecord [(String, Ty)]
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
          |  TokenVar String
          |  TokenLam
          |  TokenApp
          |  TokenRecord
          |  TokenProjRecord
          |  TokenLet
          |  TokenIn
          |  TokenMaior
          |  TokenMenor
          |  TokenIgual
          |  TokenNot
          |  TokenAtrib
          |  TokenLBrace
          |  TokenRBrace
          |  TokenVirgula
          |  TokenPonto
          |  TokenArrow
          |  TokenBool
          deriving (Show, Eq)



isToken :: Char -> Bool
isToken c =  c `elem` "+-*&|^<=>!{},."



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
              ("lam", rest) -> TokenLam : lexer rest
              ("let", rest) -> TokenLet : lexer rest
              ("in", rest) -> TokenIn : lexer rest
              ("bool", rest) -> TokenBool : lexer rest
        --       _ -> error "Lexical error: invalid keyword!"
              (var , rest) -> TokenVar var : lexer rest



lexSymbol :: String -> [Token]
lexSymbol cs = case span isToken cs of
                ("+", rest) -> TokenAdd : lexer rest
                ("-", rest) -> TokenSub : lexer rest
                ("*", rest) -> TokenMul : lexer rest
                ("&&", rest) -> TokenAnd : lexer rest
                ("||", rest) -> TokenOr : lexer rest
                ("^", rest) -> TokenXor : lexer rest
                (">", rest) -> TokenMaior : lexer rest
                ("<", rest) -> TokenMenor : lexer rest
                ("==", rest) -> TokenIgual : lexer rest
                ("=", rest) -> TokenAtrib : lexer rest
                ("!", rest) -> TokenNot : lexer rest
                ("{", rest) -> TokenLBrace : lexer rest
                ("}", rest) -> TokenRBrace : lexer rest
                (",", rest) -> TokenVirgula : lexer rest
                (".", rest) -> TokenPonto : lexer rest
                ("->", rest) -> TokenArrow : lexer rest
                _ -> error "Lexical error: invalid symbol!"