module GabungList where
gabungList :: [Int] -> [Int] -> [Int]
insert :: Int -> [Int] -> [Int]

insert x li 
    | null li = [x]
    | otherwise =
        if x <= head li then [x] ++ li
        else [head li] ++ insert x (tail li)

gabungList l1 l2 
    | null l1 = l2
    | otherwise = gabungList (tail l1) (insert (head l1) l2)