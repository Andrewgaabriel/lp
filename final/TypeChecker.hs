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
typeof ctx (Not e) = 
    case typeof ctx e of
        Just TBool -> Just TBool
        _          -> Nothing
typeof ctx (Let v e1 e2) = case typeof ctx e1 of
                              Just t1 -> typeof ((v, t1):ctx) e2
                              _       -> Nothing
typeof ctx (Maior e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TBool
        _                        -> Nothing
typeof ctx (Menor e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TBool
        _                        -> Nothing
typeof ctx (Igual e1 e2) = 
    case (typeof ctx e1, typeof ctx e2) of
        (Just TNum, Just TNum)   -> Just TBool
        _                        -> Nothing        
typeof ctx (Record lista) = Just (TRecord (map (\(label, expressao) -> (label, typeof ctx expressao)) lista))
typeof ctx (ProjRecord (Record lista) alvo) = case (typeof ctx (Record lista)) of
                                                Just (TRecord lista) -> case lookup alvo lista of
                                                                          Just t -> Just t
                                                                          _      -> Nothing
                                                _                     -> Nothing


-- typeof ctx (Record lista) = Just (TRecord (map (\(label, expressao) -> (label, typeof ctx expressao)) lista))
-- typeof ctx (GetFromRecord (Record lista) alvo) = case lookup alvo lista ofxz

--                                                     Just t -> Just t
--                                                     _      -> Nothing





typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
                Just _  -> e
                Nothing -> error "Type error!"
