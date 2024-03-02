filterGanjil :: [Int] -> [Int]

filterGanjil li
    | null li = []
    | mod (head li) 2 /= 0 = head li : filterGanjil (tail li)
    | otherwise = filterGanjil (tail li)