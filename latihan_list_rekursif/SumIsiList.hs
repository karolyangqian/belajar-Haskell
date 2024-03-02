sumIsiList :: [Int] -> Int

sumIsiList l
    | length l == 1 = head l
    | length l > 1 = head l + sumIsiList (tail l)