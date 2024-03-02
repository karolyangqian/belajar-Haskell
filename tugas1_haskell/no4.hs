-- https://github.com/karolyangqian/tugas1_haskell
-- MENCARI NILAI TENGAH                   nilaiTengah(a, b, c)
-- DEFINISI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{-  nilaiTengah(a, b, c) menerima masukan 3 buah integer 
    yang berlainan nilainya yang urutannya bisa acak dan 
    mengembalikan sebuah integer yang merupakan salah satu dari 
    ke-3 nilai tersebut yang jika diurutkan berada di tengah. -}

max3 :: Int -> Int -> Int -> Int
-- max3 a b c d menghasilkan maksimum dari a b c d
min3 :: Int -> Int -> Int -> Int
-- min3 a b c d menghasilkan minimum dari a b c d

-- REALISASI
max3 a b c
    | (a>b) && (a>c) = a
    | (b>a) && (b>c) = b
    | (c>b) && (c>a) = c

min3 a b c
    | (a<b) && (a<c) = a
    | (b<a) && (b<c) = b
    | (c<b) && (c<a) = c

nilaiTengah a b c = a + b + c - max3 a b c - min3 a b c