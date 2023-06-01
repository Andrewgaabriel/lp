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
-- o (Suc m) é como se fosse m - 1

{- 
    m = 2
    n = 3
    natAdd (Suc (Suc Zero)) (Suc (Suc (Suc Zero)))
    - Aqui ele vai entrar no segundo caso, pois o primeiro não se aplica
    Suc (natAdd (Suc Zero) (Suc (Suc Zero)))
    Suc (Suc (natAdd Zero (Suc (Suc Zero))))
    Suc (Suc (Suc (Suc Zero)))


 -}



{- Multiplicação -}
natMul :: Nat -> Nat -> Nat
natMul Zero _ = Zero -- Zero * n = Zero
natMul (Suc Zero) n = n -- Um * n = n
natMul (Suc m) n = natAdd n (natMul m n) -- (m-1) * n = n + m * n

{- 
    m = 2
    n = 3
    natMul (Suc (Suc Zero)) (Suc (Suc (Suc Zero)))
    - Aqui ele vai entrar no terceiro caso, pois o primeiro e o segundo não se aplicam
    natAdd (Suc (Suc (Suc Zero))) (natMul (Suc (Suc Zero)) (Suc (Suc (Suc Zero))))
    natAdd (Suc (Suc (Suc Zero))) (natAdd (Suc (Suc (Suc Zero))) (natMul (Suc Zero) (Suc (Suc (Suc Zero)))))
    natAdd (Suc (Suc (Suc Zero))) (natAdd (Suc (Suc (Suc Zero))) (natAdd Zero (natMul Zero (Suc (Suc (Suc Zero))))))
    natAdd (Suc (Suc (Suc Zero))) (natAdd (Suc (Suc (Suc Zero))) (natAdd Zero Zero))
    natAdd (Suc (Suc (Suc Zero))) (natAdd (Suc (Suc (Suc Zero))) Zero)
    natAdd (Suc (Suc (Suc Zero))) (Suc (Suc (Suc Zero)))
    Suc (natAdd (Suc (Suc Zero)) (Suc (Suc (Suc Zero))))
    Suc (Suc (natAdd (Suc Zero) (Suc (Suc (Suc Zero)))))
    Suc (Suc (Suc (natAdd Zero (Suc (Suc (Suc Zero))))))
    Suc (Suc (Suc (Suc (Suc (Suc Zero)))))

 -}


{- Subtração -}
natSub :: Nat -> Nat -> Nat
natSub Zero _ = Zero -- Zero - n = Zero
natSub n Zero = n -- n - Zero = n
natSub (Suc m) (Suc n) = natSub m n -- (m-1) - (n-1) = m - n
-- o (Suc m) é como se fosse m - 1, e o (Suc n) é como se fosse n - 1


{- 
    m = 3 = Suc (Suc (Suc Zero))
    n = 2 = Suc (Suc Zero)
    
    m - n = 3 - 2 = 1 = Suc Zero

    natSub (Suc (Suc (Suc Zero))) (Suc (Suc Zero))
    - Aqui ele vai entrar no terceiro caso, pois o primeiro e o segundo não se aplicam
    natSub (Suc (Suc Zero)) (Suc Zero)
    - Aqui ele vai entrar no terceiro caso, pois o primeiro e o segundo não se aplicam
    natSub (Suc Zero) Zero
    - Aqui ele vai entrar no segundo caso, pois o primeiro não se aplica
    Suc Zero




    

 -}






main :: IO ()
main = putStrLn "Hello, Haskell!"