module DoubleFactorial where

doubleFactorial :: Int -> Int

doubleFactorial n 
    | n == 0 || n == 1 = 1
    | n > 1 = n * doubleFactorial (n-2)