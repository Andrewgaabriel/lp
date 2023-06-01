module Interpreter where

import Lexer
import Parser

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
-- If <condicao> <expressao se verdade> <expressao se falso>  

eval :: Expr -> Expr
eval BTrue = BTrue
eval BFalse = BFalse
eval (Num x) = Num x
eval e' = eval (step e')
