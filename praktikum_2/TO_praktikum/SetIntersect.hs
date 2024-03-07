setIntersect :: [Int] -> [Int] -> [Int]

setIntersect l1 l2
    | null l1 || null l2 = []
    | head l1 < head l2 = setIntersect (tail l1) l2
    | head l2 < head l1 = setIntersect l1 (tail l2)
    | otherwise = [head l1] ++ setIntersect (tail l1) (tail l2)