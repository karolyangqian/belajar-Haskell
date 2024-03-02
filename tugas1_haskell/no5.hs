-- https://github.com/karolyangqian/tugas1_haskell
-- KONVERSI KE DOLLAR                toDollar q d n p
-- DEFINISI DAN SPESIFIKASI
toDollar :: Int -> Int -> Int -> Int -> (Int, Int)
-- toDollar q d n p mengembalikan tupple (Dollar, Sen) dari jumlah quarter (q), dime (d), nickel (n), dan penny (p).
toSen :: Int -> Int -> Int -> Int -> Int
-- toSen q d n p mengembalikan nilai Sen dari jumlah quarter, dime, nickel, dan penny.

-- REALISASI
toSen q d n p = q * 25 + d * 10 + n * 5 + p

toDollar q d n p = ((toSen q d n p - (toSen q d n p `mod` 100)) `div` 100, toSen q d n p `mod` 100)

