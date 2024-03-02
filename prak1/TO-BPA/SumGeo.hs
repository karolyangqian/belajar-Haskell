module SumGeo where

sumGeo :: Int -> Int -> Int -> Int

sumGeo a r n
    | n == 0 = 0
    | n > 0 = a * (r ^ (n-1)) + sumGeo a r (n-1)
    