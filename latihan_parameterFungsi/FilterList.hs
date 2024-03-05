-- FILTER LIST                      filterList li func
-- DEFINISI DAN SPESIFIKASI
filterList :: [Int] -> (Int -> Bool) -> [Int]
{-  filterList li func melakukan filter atau penyaringan terhadap elemen list dan
    menghasilkan list baru dengan elemen yang lolos kriteria filter. -}
konso :: Int -> [Int] -> [Int]
{-  konso e li menghasilkan sebuah list of integer baru dengan e sebagai elemen pertama
    dan li sebagai sisa isi list setelah e. -}
isEmpty :: [Int] -> Bool
{-  isEmpty li mengembalikan True jika list li kosong dan False jika li ada isinya. -}
isPos :: Int -> Bool
{-  isPos n mengembalikan True jika n positif dan False jika bukan. -}
isNeg :: Int -> Bool
{-  isNeg n mengembalikan True jika n negatif dan False jika bukan. -}
isKabisat :: Int -> Bool
{-  isKabisat n mengembalikan True jika n adalah tahun kabisat dan False jika bukan-}

-- REALISASI
konso e li = e : li
isEmpty li = null li
isPos n = n >= 0
isNeg n = n < 0
isKabisat n
    | mod n 100 == 0 = mod n 400 == 0
    | otherwise = mod n 4 == 0
filterList li func
    | isEmpty li = []
    | func (head li) = konso (head li) (filterList (tail li) func)
    | otherwise = filterList (tail li) func

-- APLIKASI
{-
filterList [(-1), 2, (-3), 4] isPos
[2,4]
filterList [(-1), 2, (-3), 4] isNeg
[-1,-3]
filterList [1900,2004,2005,2012] isKabisat
[2004,2012]
filterList [(-1), 2, (-3), 4] (\x -> x >= 0)
[2,4]
filterList [(-1), 2, (-3), 4] (\x -> x < 0)
[-1,-3]
filterList [1900,2004,2005,2012] (\x -> (if mod x 100 == 0 then mod x 400 == 0 else mod x 4 == 0))
[2004,2012]
-}