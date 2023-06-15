module TypeChecker where

import Lexer
import Parser





type Ctx = [(String, Ty)]



---  |- == typeOf
typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx BTrue = Just TBool
typeof ctx BFalse = Just TBool
typeof ctx (Num _) = Just TNum
typeof ctx (Add e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TNum
        _                        -> Nothing
typeof ctx (Sub e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TNum
        _                        -> Nothing
typeof ctx (Mul e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TNum
        _                        -> Nothing
typeof ctx (And e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TBool, Just TBool) -> Just TBool
        _                        -> Nothing
typeof ctx (Or e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TBool, Just TBool) -> Just TBool
        _                        -> Nothing
typeof ctx (Xor e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TBool, Just TBool) -> Just TBool
        _                        -> Nothing
typeof ctx (If e1 e2 e3) =
    case typeof ctx e1 of 
      (Just TBool) -> case (typeof ctx e2, typeof ctx e3) of
                          (Just t1, Just t2) -> if t1 == t2 then
                                                  Just t1
                                                else 
                                                  Nothing
                          _                   -> Nothing
      _            -> Nothing
typeof ctx (Var v) = lookup v ctx
typeof ctx (Lam v t1 b) = case typeof ((v, t1):ctx) b of
                            Just t2 -> Just (TFun t1 t2)
                            _ -> Nothing
typeof ctx (App e1 e2) =
    case (typeof ctx e1, typeof ctx e2) of
        (Just (TFun t1 t2), Just t3) -> if t1 == t3 then
                                            Just t2
                                         else
                                            Nothing
typeof ctx (Records []) = Just (TRecord [])
typeof ctx (Records ((s, e):xs)) = 
    case typeof ctx e of
        Just t -> case typeof ctx (Records xs) of
                    Just (TRecord xs) -> Just (TRecord ((s, t):xs))
                    _            -> Nothing
        _      -> Nothing
typeof ctx (GetFromRecord ex str) = 
    case typeof ctx ex of
        Just (TRecord xs) -> case lookup str xs of
                                Just t -> Just t
                                _      -> Nothing
        _            -> Nothing



typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
                Just _  -> e
                Nothing -> error "Type error!"
