module Main where


fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib(n-2)



prodintervalo :: Integer -> Integer -> Integer
prodintervalo m n
    | m > n = 0
    | m == n = n
    | otherwise = m * prodintervalo (m+1) n





{- 
    m = 3
    n = 5

    prodintervalo 3 5
    3 * prodintervalo 4 5
    3 * (4 * prodintervalo 5 5)
    3 * (4 * 5)


 -}








main :: IO ()

main = putStrLn "Hello World"