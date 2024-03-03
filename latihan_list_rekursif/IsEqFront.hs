-- APAKAH POTONGAN AWAL SAMA                    isEqFront t1 t2
-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
{-  isEqFront menerima 2 list of characters t1 dan t2 yang tidak kosong
    dan mengembalikan True jika potongan awal t2 mengandung t1 dan mengembalikan
    False jika sebaliknya. -}

isEqFront t1 t2 
    | null t2 && not (null t1)= False
    | null t1 = True
    | head t1 /= head t2 = False
    | otherwise = isEqFront (tail t1) (tail t2)