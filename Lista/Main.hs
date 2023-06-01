module Main where


{- Exercício 1 -}
salario :: Float -> Float
salario s = s - (s * 0.07) + (s * 0.1)



{- Exercício 2 -}
nota :: Float -> Float -> Float -> Char
nota a b c 
    | media >= 8 = 'A'
    | media >= 7 = 'B'
    | media >= 6 = 'C'
    | media >= 5 = 'D'
    | otherwise = 'E'
    where media = (a * 0.2) + (b * 0.3) + (c * 0.5)



{- Exercício 3 -}
precoRetrato :: Integer -> String -> Double
precoRetrato individuos diaDaSemana 
    | diaDaSemana == "sábado" || diaDaSemana == "domingo" = 1.2 * precoBase individuos
    | otherwise = precoBase individuos
    where precoBase individuos
            | individuos == 1 = 100.0
            | individuos == 2 = 130.0
            | individuos == 3 = 150.0
            | individuos == 4 = 165.0
            | individuos == 5 = 175.0
            | individuos == 6 = 180.0
            | otherwise = 185.0



{- Exercício 4 -}
fatorialDuplo :: Integer -> Integer
fatorialDuplo n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = n * fatorialDuplo (n - 2)



{- Exercício 5 com If-}
potencia :: Integer -> Integer -> Integer
potencia x n
    | n == 0 = 1
    | n == 1 = x
    | otherwise = x * potencia x (n - 1)




{- Exercício 5 com Pattern Matching-}
potenciaPM :: Integer -> Integer -> Integer
potenciaPM x 0 = 1
potenciaPM x n = x * potenciaPM x (n - 1)



{- Exercício 6 -}
{- salarioAtual :: Integer -> Integer -> Integer
salarioAtual salarioInicial anoContratacao anoAtual
    | anosTrabalhados == 0 = salarioInicial
    | otherwise = salarioReajustado
    where anosTrabalhados = anoAtual - anoContratacao
        reajuste = 0.015 
        salarioReajustado = salarioInicial + (salarioInicial * reajuste) -}


{- Exercício 6 - Professor -}
salarioAtual :: Double -> Double -> Int -> Int -> Double
salarioAtual salario porcentagem anoContratacao anoAtual = if (anoContratacao == anoAtual) then
                                                            salario
                                                        else
                                                            salarioAtual (salarioIncrementado salario porcentagem) (2 * porcentagem) (anoContratacao + 1) anoAtual
            where salarioIncrementado salario porcentagem = salario + (salario * porcentagem/100)



{- Exercício 7 -}
ultimo :: [Integer] -> Integer
ultimo [x] = x
ultimo (x:xs) = ultimo xs


{- Exercicio 8 -}
primeiros :: [Integer] -> [Integer]
primeiros [x] = []
primeiros (x:xs) = x : primeiros xs


{- Exercício 9 -}
produtoLista :: [Integer] -> [Integer] -> [Integer]
produtoLista [] _ = []
produtoLista _ [] = []
produtoLista (x:xs) (y:ys) = (x * y) : produtoLista xs ys


{- Exercício 10 e 11-}
data TipoProduto = Perecivel Integer Bool | NaoPerecivel String Integer deriving Show
data Produto = Produto Integer String TipoProduto Comercializacao deriving Show
data Comercializacao = Unidade | Peso  deriving Show

{- Executando:
    let p1 = Produto 1 "Arroz" (NaoPerecivel "Alimento" 10) Peso -}



{- Exercicio 12 -}
valido :: Produto -> Integer -> Bool
valido produto anoAtual = case produto of
                            Produto _ _ (Perecivel validade _) _ -> validade >= anoAtual 
                            Produto _ _ (NaoPerecivel _ _) _ -> True 




{- Exercicio 13 -}
and :: Bool -> Bool -> Bool
and True True = True
and _ _ = False




or :: Bool -> Bool -> Bool
or False False = False
or _ _ = True



{- Exercicio 14 -}
lstnum :: [Integer] -> Integer
lstnum [x] = x
lstnum (x:xs) = x + head xs
lstnum [] = 0


{- Exerciocio 15 -}
countList :: [Integer] -> Integer
countList l = foldl (\acc x -> acc + 1) 0 l





{- FILTER, FOLD E MAP -}



main :: IO ()

main = putStrLn "Hello World"