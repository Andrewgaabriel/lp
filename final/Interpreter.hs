module Interpreter where

import Lexer
import Parser






isValue :: Expr -> Bool
isValue BTrue = True
isValue BFalse = True
isValue (Num n) = True
isValue (Lam _ _ _) = True
isValue (Var _) = True
isValue _ = False






step :: Expr -> Expr
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e2) = Add (Num n) (step e2)
step (Add e1 e2) = Add (step e1) e2
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e2) = Sub (Num n) (step e2)
step (Sub e1 e2) = Sub (step e1) e2
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num n) e2) = Mul (Num n) (step e2)
step (Mul e1 e2) = Mul (step e1) e2
step (And BFalse e2) = BFalse
step (And BTrue e2) = e2
step (And e1 e2) = And (step e1) e2
step (Or BTrue _) = BTrue
step (Or _ BTrue) = BTrue
step (Or e1 e2) = Or (step e1) e2
step (Xor BTrue BTrue) = BFalse
step (Xor BFalse BFalse) = BFalse
step (Xor e1 e2) = Xor (step e1) e2
step (If BTrue e1 e2) = e1
step (If BFalse e1 e2) = e2
step (If e1 e2 e3) = If (step e1) e2 e3
step (App (Lam x t e1) e2)| isValue e2 = subst x e2 e1
                          | otherwise = App (Lam x t e1) (step e2)
step (App e1 e2) = App (step e1) e2
step (Records []) = Records []
-- Ele vai tratar a expressão calculado pelo step como um par, e vai adicionar esse par na lista de pares

-- TALVEZ NÃO DEVA EXISTIR O TRATAMENTO DE RECORDS PORQUE ELES SÃO TRATADOS COMO VALORES??
step (Records ((label, expressao):resto)) | isValue expressao = Records ((label, expressao):resto)
                           | otherwise = Records ((label, step expressao):resto)
step (GetFromRecord (Records ((label, expressao):resto)) label2) | label == label2 = expressao
                                                                 | otherwise = GetFromRecord (Records resto) label2
step (GetFromRecord (Records []) label2) = GetFromRecord (Records []) label2
step (GetFromRecord e label) = GetFromRecord (step e) label

-- Para testar:
-- step (Records [("nome", Var "Andrew"), ("idade", Num 20)])
-- Records [("nome",Var "Andrew"),("idade",Num 20)]
-- step (GetFromRecord (Records [("nome", Var "Andrew"), ("idade", Num 20)]) "nome")
-- Var "Andrew"



-- ("soma", Add (Num 1) (Num 2))
-- Add (Num 1) (Num 2)
-- Num 3



eval :: Expr -> Expr
eval BTrue = BTrue
eval BFalse = BFalse
eval (Num x) = Num x
eval e' = eval (step e')





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




