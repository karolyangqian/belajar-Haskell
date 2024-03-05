-- JUMLAH INTEGER BERSYARAT                 sumInteger m n f 
-- DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
{-  sumInteger m n f mengembalikan jumlah setiap integer dalam rentang m sampai n
    yang memenuhi syarat pada fungsi f. -}
isGenap :: Int -> Bool
{-  isGenap n mengembalikan True jika n genap dan False jika bukan. -}
gtThan5 :: Int -> Bool 
{-  gtThan5 n mengembalikan True jika n lebih besar dari 5 dan False jika tidak. -}

-- REALISASI
isGenap n = mod n 2 == 0
gtThan5 n = n > 5
sumInteger m n f 
    | n < m = 0
    | otherwise = 
        if f n then n + sumInteger m (n-1) f else sumInteger m (n-1) f

-- APLIKASI
{-
sumInteger 1 100 (\x -> mod 100 x == 0)
217
sumInteger 1 100 (\x -> (isGenap x && mod x 10 == 0) || (not (isGenap x) && mod x 5 == 0))
1050
sumInteger 25 25 (\x -> x < 10)
0
-}