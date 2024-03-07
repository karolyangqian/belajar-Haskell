module Insort where

insort :: [Int] -> [Int]
-- insertion sort
isEmpty :: [Int] -> Bool
insertDot :: [Int] -> Int -> [Int]
konsDot :: [Int] -> Int -> [Int]

isEmpty li = null li
konsDot li e = li ++ [e]
insertDot li x
    | isEmpty li = [x]
    | x >= last li = konsDot li x
    | otherwise = konsDot (insertDot (init li) x) (last li)
insort li 
    | isEmpty li = []
    | otherwise = 
        insertDot (insort (init li)) (last li)