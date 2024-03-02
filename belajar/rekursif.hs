handShake :: Int -> Int

handShake n
    | n == 1    = 0
    | n == 2    = 1
    | n > 2     = handShake (n-1) + (n - 1)

faktorial :: Int -> Int

faktorial n
    | n == 1    = 1
    | n > 1     = n * faktorial (n-1)

fpb :: Int -> Int -> Int

fpb a b = 
    if mod a b == 0 then b
    else fpb b (mod a b)


f :: Int -> Int -> Bool

f a b =
    if mod a 2 == 0 then 
        if a + b == 0 then True
        else False
    else if a == b then True
    else False


