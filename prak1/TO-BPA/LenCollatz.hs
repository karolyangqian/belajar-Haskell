module LenCollatz where

lenCollatz :: Int -> Int

lenCollatz n
    | n == 1 = 1
    | even n = 1 + lenCollatz (div n 2)
    | odd n = 1 + lenCollatz (3*n + 1)