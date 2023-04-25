module Main where

data Cliente = OrgGov String
             | Empresa String Integer String String
             | Individuo Pessoa Bool
             deriving Show

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino
            | Feminino
            | Outro String
            deriving Show

data Person = Person 
            {
                nome :: String,
                idade :: Int
            }
            deriving Show

nomeCliente :: Cliente -> String
nomeCliente cliente = case cliente of
                        OrgGov nome -> nome
                        Empresa nome _ _ _ -> nome
                        Individuo (Pessoa pnome snome _) _ -> pnome ++ " " ++ snome

nomeEmpresa :: Cliente -> Maybe String
nomeEmpresa cliente = case cliente of
                        Empresa nome _ _ _ -> Just nome
                        _ -> Nothing

trd :: (a, b, c) -> c
trd (_, _, c) = c


cabeca :: [a] -> a
cabeca (x:_) = x

cauda :: [a] -> [a]
cauda (_:xs) = xs

nulo :: [a] -> Bool
nulo [] = True
nulo _ = False


encontra :: Int -> [a] -> a
encontra 0 (x:_) = x
encontra n (_:xs) = encontra (n-1) xs

tamanho :: [a] -> Int
tamanho [] = 0
tamanho (_:xs) = 1 + tamanho xs

concat :: [Int] -> [Int] -> [Int]
concat [] ys = ys
concat (x:xs) ys = x : concat xs ys



main :: IO ()
main = putStrLn "Hello, Haskell!"