-- JUMLAH ISI LIST              sumIsiList l
-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{-  sumIsiList l menerima list of integer lalu mengembalikan jumlah setiap 
    elemen dalam list. -}

-- REALISASI
sumIsiList l
    | length l == 1 = head l
    | length l > 1 = head l + sumIsiList (tail l)