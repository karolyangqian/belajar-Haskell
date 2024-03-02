-- JUMLAH RENTANG BILANGAN                  sumRange a b
-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
{-  sumRange a b menerima 2 integer a dan b sebagai rentang
    bilangan dengan a <= b lalu mengembalikan jumlah semua bilangan
    dari a s.d. b termasuk a dan b.-}

-- REALISASI
sumRange a b 
    | a >= 0 && b >= 0 =
        if a <= b then
            if b > a then sumRange a (b-1) + b
            else a
        else sumRange b a
    | otherwise = -1