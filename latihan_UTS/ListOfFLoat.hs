module ListOfFLoat where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Float -> [Float] -> [Float]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Float] -> Float -> [Float]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Float] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Float] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- OFFSET LIST                                             offsetList f g a b
-- DEFINISI DAN SPESIFIKASI
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{-  ofsetList f g a b menerima masukan dua buah fungsi, misalnya f dan g, 
    serta dua buah bilangan riil (float), a dan b. Fungsi offsetList akan 
    menghasilkan sebuah list of float yang merupakan penerapan fungsi f 
    terhadap bilangan float antara a dan b, dimulai dari a dengan increment 
    menggunakan fungsi g.-}
iD :: Float -> Float
-- id x mengembalikan nilai x
p1 :: Float -> Float
-- p1 x mengembalikan nilai x + 1
p2 :: Float -> Float
-- p2 x mengembalikan nilai x + 2

-- REALISASI
offsetList f g a b 
    | a > b = []
    | otherwise = konso (f a) (offsetList f g (g a) b)
iD x = x 
p1 x = x + 1 
p2 x = x + 2

-- CONTOH APLIKASI
{-
offsetList (\x -> x) (\x -> x + 2) 1.2 7.1
[1.2,3.2,5.2]
offsetList (\x -> if x < 0 then -999.0 else x + 3.2) (\x -> x + 0.5) (-1) 1  
[-999.0,-999.0,3.2,3.7,4.2]
-}