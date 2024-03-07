module AlternateSort where
alternateSort :: [Int] -> [Int]
insort :: [Int] -> [Int]
insert :: Int -> [Int] -> [Int]

insert x li 
    | null li = [x]
    | otherwise =
        if x <= head li then [x] ++ li
        else [head li] ++ insert x (tail li)
insort li 
    | null li = []
    | otherwise =
        insert (head li) (insort (tail li))
alternateSort li 
    | null li || length li == 1 = li
    | otherwise = head (insort li) : (last (insort li) : alternateSort(tail(init (insort li))))