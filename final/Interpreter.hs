module Interpreter where

import Lexer
import Parser



isValue :: Expr -> Bool
isValue BTrue = True
isValue BFalse = True
isValue (Num _) = True
isValue (Lam _ _ _) = True
-- Usando all == {verifica se todos os elementos da lista satisfazem a condição}
isValue (Record lista) = all (\(label, expressao) -> isValue expressao) lista
isValue _ = False

isBool :: Expr -> Bool
isBool BTrue = True
isBool BFalse = True
isBool _ = False




step :: Expr -> Expr
-- -------------------------------------------------------------------------------
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e2) = Add (Num n) (step e2)
step (Add e1 e2) = Add (step e1) e2
-- -------------------------------------------------------------------------------
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e2) = Sub (Num n) (step e2)
step (Sub e1 e2) = Sub (step e1) e2
-- -------------------------------------------------------------------------------
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num n) e2) = Mul (Num n) (step e2)
step (Mul e1 e2) = Mul (step e1) e2
-- -------------------------------------------------------------------------------
step (And BFalse e2) = BFalse
step (And BTrue e2) = e2
step (And e1 e2) = And (step e1) e2
-- -------------------------------------------------------------------------------
step (Or BTrue _) = BTrue
step (Or _ BTrue) = BTrue
step (Or e1 e2) = Or (step e1) e2
-- -------------------------------------------------------------------------------
step (Xor BTrue BTrue) = BFalse
step (Xor BFalse BFalse) = BFalse
step (Xor e1 e2) = Xor (step e1) e2
-- -------------------------------------------------------------------------------
step (If BTrue e1 e2) = e1
step (If BFalse e1 e2) = e2
step (If e1 e2 e3) = If (step e1) e2 e3
-- -------------------------------------------------------------------------------
step (App (Lam x t e1) e2)  | isValue e2 = subst x e2 e1
                            | otherwise = App (Lam x t e1) (step e2)
step (App e1 e2) = App (step e1) e2
-- -------------------------------------------------------------------------------
step (Not BTrue) = BFalse
step (Not BFalse) = BTrue
step (Not e) = Not (step e)
-- -------------------------------------------------------------------------------
step (Maior (Num n1) (Num n2)) = if n1 > n2 then BTrue else BFalse
step (Maior (Num n) e2) = Maior (Num n) (step e2)
step (Maior e1 e2) = Maior (step e1) e2
-- -------------------------------------------------------------------------------
step (Menor (Num n1) (Num n2)) = if n1 < n2 then BTrue else BFalse
step (Menor (Num n) e2) = Menor (Num n) (step e2)
step (Menor e1 e2) = Menor (step e1) e2
-- -------------------------------------------------------------------------------
step (Igual (Num n1) (Num n2)) = if n1 == n2 then BTrue else BFalse
step (Igual (Num n) e2) = Igual (Num n) (step e2)
step (Igual e1 e2) | isBool e1 && isBool e2 = if e1 == e2 then BTrue else BFalse
                   | otherwise = Igual (step e1) e2
-- -------------------------------------------------------------------------------
-- v = variavel que vai ser definida                          
-- e1 = expressao que vai ser avaliada e atribuida a v
-- e2 = expressao que vai ser avaliada com a variavel v definida
-- Exemplo de uso:
    -- let x = 10 in x + 1
    -- let x = 10+1 in x + 1

step (Let x e1 e2) | isValue e1 = subst x e1 e2
                   | otherwise = Let x (step e1) e2
-- -------------------------------------------------------------------------------
step (ProjRecord (Record lista) label) = case lookup label lista of
                                            Just e -> e
                                            Nothing -> error "Label não encontrada"
-- -------------------------------------------------------------------------------
step (ProjRecord e label) = ProjRecord (step e) label                  
-- -------------------------------------------------------------------------------
step (Record []) = Record []
step (Record lista) = Record (map (\(label, expressao) -> (label, step expressao)) lista)


-- step (GetFromRecord (Record ((label, expressao):resto)) alvo) | label == alvo = expressao
--                                                                | otherwise = step (GetFromRecord (Record resto) alvo)
-- step (GetFromRecord (Record []) alvo) = GetFromRecord (Record []) alvo



-- step (GetFromRecord e label) = GetFromRecord (step e) label


-- Para testar:
-- step (Record [("nome", Var "Andrew"), ("idade", Num 20)])
-- Record [("nome",Var "Andrew"),("idade",Num 20)] -------------------------------------isso é valido?
-- step (GetFromRecord (Record [("nome", Var "Andrew"), ("idade", Num 20)]) "nome")
-- Var "Andrew"



-- ("soma", Add (Num 1) (Num 2))
-- Add (Num 1) (Num 2)
-- Num 3



eval :: Expr -> Expr
eval e | isValue e = e
       | otherwise = eval (step e)


-- subst <variável> <valor> <expressão onde a variável vai ser substituida pelo valor passado>
subst :: String -> Expr -> Expr -> Expr
subst x n BTrue = BTrue
subst x n BFalse = BFalse
subst x n (Num y) = Num y
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Xor e1 e2) = Xor (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Var v) | x == v = n
                  | otherwise = Var v
subst x n (Lam v t e) = Lam v t (subst x n e)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (Maior e1 e2) = Maior (subst x n e1) (subst x n e2)
subst x n (Menor e1 e2) = Menor (subst x n e1) (subst x n e2)
subst x n (Igual e1 e2) = Igual (subst x n e1) (subst x n e2)
subst x n (Record lista) = Record (map (\(label, expressao) -> (label, subst x n expressao)) lista)
subst x n (ProjRecord e label) = ProjRecord (subst x n e) label
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
