module NbA where

nbA :: [Char] -> Int
-- nbA(lc) menghasilkan banyaknya kemunculan huruf 'A' di teks lc
isEmpty :: [Char] -> Bool

isEmpty lc = null lc
nbA lc 
    | isEmpty lc = 0
    | otherwise = if head lc == 'A' then 1 + nbA (tail lc) else nbA (tail lc)