-- LUAS BUJUR SANGKAR           luasBS s

-- DEFINISI DAN SEPSIFIKASI
luasBS :: Int -> Int
{-  luasBS s menerima s sebagai panjang rusuk bujur sangkar
    lalu mengembalikan luas bujur sangkar tersebut dengan metode 
    rekursif.-}

-- REALISASI
luasBS s
    | s < 0 = luasBS (-s)
    | s == 1 = 1
    | otherwise = 
        2 * s - 1 + luasBS (s-1) 