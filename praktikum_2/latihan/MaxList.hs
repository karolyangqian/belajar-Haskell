module MaxList where

maxList :: [Int] -> Int
-- maxList(Li) : menghasilkan elemen Li yang bernilai maksimum
isOneElmt :: [Int] -> Bool
max2 :: Int -> Int -> Int

isOneElmt l = length l == 1
max2 a b = div (a+b + abs(a-b)) 2
maxList li
    | isOneElmt li = head li
    | otherwise = max2 (head li) (maxList (tail li))