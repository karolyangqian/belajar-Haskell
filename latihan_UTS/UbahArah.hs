ubahArah :: Int -> Int -> Int

-- REALISASI
ubahArah s r = mod (s+r) 360

-- CONTOH APLIKASI
{-  
ubahArah 358 (-359)
359
ubahArah 350 100   
90
ubahArah 10 (-100)
270
ubahArah 50 100 
150
-}