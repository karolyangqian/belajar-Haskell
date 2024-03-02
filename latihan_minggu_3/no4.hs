-- DERET SEGITIGA               deretSegitiga n

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{-  deretSegitiga n menerima sebuah integer n dan
    mengembalikan bilangan ke-n pada deret segitiga.-}

-- REALISASI
deretSegitiga n 
    | n == 1 = 1
    | n > 1 = n + deretSegitiga (n-1)