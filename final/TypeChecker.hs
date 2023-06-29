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
typeof ctx (Not e) = case (typeof ctx e) of
                          (Just TBool) -> Just TBool
                          _            -> Nothing
-- v = variavel que vai ser definida                          
-- e1 = expressao que vai ser avaliada e atribuida a v
-- e2 = expressao que vai ser avaliada com a variavel v definida
-- Exemplo de uso:
    -- let x = 10 in x + 1
    -- let x = 10+1 in x + 1
typeof ctx (Let v e1 e2) =
      case (typeof ctx e1) of
           (Just t1) -> typeof ((v, t1):ctx) e2
           _         -> Nothing
typeof ctx (Maior e1 e2) = 
      case (typeof ctx e1, typeof ctx e2) of
           (Just TNum, Just TNum)  -> Just TNum
           _                       -> Nothing
typeof ctx (Menor e1 e2) = 
      case (typeof ctx e1, typeof ctx e2) of
           (Just TNum, Just TNum)   -> Just TNum
           _                        -> Nothing
typeof ctx (Igual e1 e2) = 
      case (typeof ctx e1, typeof ctx e2) of
           (Just TNum, Just TNum)   -> Just TNum
           _                        -> Nothing    
-- Retorna o tipo do elemento que está procurando na lista    
typeof ctx (ProjRecord lista label) =
    case typeof ctx lista of
        Just (TRecord fields) -> lookup label fields
        _                     -> Nothing
-- Ele percorre a lista de record e verifica se todos os elementos sao do tipo correto
-- Ele retorna o tipo do record e o tipo de cada elemento da lista
typeof ctx (Record lista) =
    if all (\(_, expr) -> case typeof ctx expr of Just _ -> True; _ -> False) lista
        then Just (TRecord (map (\(label, expr) -> (label, getType ctx expr)) lista))
        else Nothing
  where
    getType :: Ctx -> Expr -> Ty
    getType ctx expr = case typeof ctx expr of Just ty -> ty









typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
                Just _  -> e
                Nothing -> error "Type error!"
