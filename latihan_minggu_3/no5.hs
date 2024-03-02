-- APAKAH GANJIL?           isGanjil n
-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{-  isGanjil n menerima sebuah integer n lalu mengembalikan
    boolean apakah n ganjil (True) atau tidak (False).-}

-- REALISASI
isGanjil n = mod n 2 == 0
