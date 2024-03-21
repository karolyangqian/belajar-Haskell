-- PANGKAT                      pangkat a b
-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{-  pangkat a b menerima 2 integer a dan b lalu mengembalikan integer nilai
    a pangkat b dengan metode komputasi secara rekursif. -}

-- REALISASI
pangkat a b 
    | b == 0 = 1
    | otherwise = a * pangkat a (b-1)

-- CONTOH APLIKASI
{-  
pangkat 3 5
243
pangkat 2 0
1
pangkat 1 9
1
-}