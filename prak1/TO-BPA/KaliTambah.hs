module KaliTambah where

kaliTambah :: Int -> Bool

kaliTambah n =
    let a = div n 1000
        b = div (n-a*1000) 100
        c = div (n-a*1000-b*100) 10
        d = mod n 10
    in 
        a + b + c + d == a * d