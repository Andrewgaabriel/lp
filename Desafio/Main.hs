module Main where


data Nat = Zero
         | Suc Nat
         deriving Show


{- Números 1 a 4: -}
um = Suc Zero
dois = Suc um
tres = Suc dois
quatro = Suc tres


{- nat2Integer -}
nat2Integer :: Nat -> Integer
nat2Integer Zero = 0
nat2Integer (Suc n) = 1 + nat2Integer n


{- integer2Nat -}
integer2Nat :: Integer -> Nat
integer2Nat 0 = Zero
integer2Nat n = Suc (integer2Nat (n-1))


{- Soma -}
natAdd :: Nat -> Nat -> Nat
natAdd Zero n = n
natAdd (Suc m) n = Suc (natAdd m n)


{- Subtração -}
natSub :: Nat -> Nat -> Nat
natSub Zero _ = Zero
natSub n Zero = n
natSub (Suc m) (Suc n) = natSub m n


{- Multiplicação -}
natMul :: Nat -> Nat -> Nat
natMul Zero _ = Zero
natMul (Suc Zero) n = n
natMul (Suc m) n = natAdd n (natMul m n)





main :: IO ()
main = putStrLn "Hello, Haskell!"