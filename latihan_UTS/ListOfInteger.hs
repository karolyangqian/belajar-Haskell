module ListOfInteger where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
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
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 


isAllGanjil :: [Int] -> Bool
-- REALISASI
isAllGanjil l 
   | isEmpty l = True 
   | otherwise = head l `mod` 2 /= 0 && isAllGanjil (tail l)


getSmallest :: [Int] -> Int 
-- REALISASI
getSmallest l 
    | isOneElmt l = head l 
    | otherwise = if head l < getSmallest (tail l) then head l else getSmallest (tail l)


delElement :: Int -> [Int] -> [Int]
-- REALISASI
delElement x l 
    | isEmpty l = []
    | head l == x = tail l 
    | otherwise = konso (head l) (delElement x (tail l))


sortList :: [Int] -> [Int]
-- REALISASI
sortList l 
    | isOneElmt l = l
    | otherwise = 
        if head l < head(sortList(tail l)) then konso (head l) (sortList(tail l))
        else konso (head(sortList(tail l))) (sortList(konso (head l) (tail(sortList(tail l)))))


isOrdered :: [Int] -> Bool
isOrdered l = isOneElmt l || (head l <= head(tail l) && isOrdered(tail l))

nilaiEkstrim :: [Int] -> (Int, Int)
nilaiEkstrim l 
   | isOneElmt l = (head l, head l)
   | otherwise =
      let (mn, mx) = nilaiEkstrim(tail l) 
      in 
         if head l < mn then (head l, mx)
         else if head l > mx then (mn, head l)
         else (mn, mx) 

trunc :: [Int] -> Int -> [Int] 
trunc l i 
   | i == 1 = [head l]
   | otherwise = konso (head l) (trunc (tail l) (i-1))

splitList :: [Int] -> ([Int], [Int])
splitList l 
   | isEmpty l || isOneElmt l= (l, [])
   | otherwise =
      let (l1, l2) = splitList(tail(init l))
      in 
         (konso (head l) l1, konsDot l2 (last l))

insSorted :: Int -> [Int] -> [Int]
insSorted x l 
   | x <= head l = konso x l 
   | otherwise = konso (head l) (insSorted x (tail l))

prevSecond :: Int -> Int -> Int -> (Int, Int, Int)
prevSecond j m d 
   | j == 0 && m == 0 && d == 0 = (23, 59, 59)
   | j > 0 && m == 0 && d == 0 = (j-1, 59, 59)
   | m > 0 && d == 0 = (j, m-1, 59)
   | otherwise = (j, m, d-1)

prevNSeconds :: Int -> Int -> Int -> Int -> (Int, Int, Int)
prevNSeconds j m d n 
   | n == 0 = (j, m, d)
   | otherwise = 
      let (jn, mn, dn) = prevSecond j m d 
      in prevNSeconds jn mn dn (n-1)

isSortedDown :: [Int] -> Bool 
isSortedDown l 
   | isOneElmt l = True 
   | head l < head(tail l) = False
   | otherwise = isSortedDown(tail l)

getElTengah :: [Int] -> Int 
getElTengah l 
   | isOneElmt(tail l) || isOneElmt l = head l 
   | otherwise = getElTengah (init(tail l))

elPosGanjil :: [Int] -> [Int]
elPosGanjil l 
   | isEmpty l || isOneElmt l = l
   | otherwise = konso (head l) (elPosGanjil(tail(tail l)))

delAllX :: [Int] -> Int -> ([Int], Int)
delAllX l x 
   | isEmpty l = ([], 0)
   | otherwise =
      let (l1, n) = delAllX (tail l) x 
      in   
         if head l == x then (l1, n+1)
         else (konso (head l) l1, n)

splitListIF :: [Int] -> (Int -> Bool) -> ([Int], [Int])
splitListIF li f 
   | isEmpty li = ([], [])
   | otherwise =
      let (l1, l2) = splitListIF (tail li) f
      in 
         if f(head li) then (konso (head li) l1, l2)
         else (l1, konso (head li) l2)