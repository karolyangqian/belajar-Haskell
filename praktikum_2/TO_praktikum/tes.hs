module Tes where
import GabungList (insert)

insort :: [Int] -> [Int]

insort l 
    | null l = []
    | otherwise = insert (head l) (insort (tail l))