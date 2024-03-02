countFactorOfX :: Int -> [Int] -> Int

countFactorOfX n l
  | null l = 0
  | mod (head l) n == 0 = 1 + countFactorOfX n (tail l)
  | otherwise = countFactorOfX n (tail l)

