delNthElmt :: Int -> [Char] -> [Char]

{- delNthElmt(n,l) menghilangkan elemen ke-n dari l. ​

   Asumsi: n adalah integer positif dan lebih kecil atau sama dengan jumlah elemen l. ​l tidak kosong. -}

delNthElmt n l
   | n == 1 = tail l
   | otherwise = head l : delNthElmt (n-1) (tail l)