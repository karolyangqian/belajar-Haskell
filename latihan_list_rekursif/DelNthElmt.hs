delNthElmt :: Int -> [Char] -> [Char]

{- delNthElmt(n,l) menghilangkan elemen ke-n dari l. ​

   Asumsi: n adalah integer positif dan lebih kecil atau sama dengan jumlah elemen l. ​l tidak kosong. -}

delNthElmt n l =
   let
      konso e l = e : l
   in
      if n == 1 then tail l
      else konso (head l) (delNthElmt (n-1) (tail l))