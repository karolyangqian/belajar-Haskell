-- FILTER GANJIL                    filterGanjil li
-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
{-  filterGanjil li menerima list of integer li lalu mengembalikan list of integer
    yang setiap elemennya hanya terdiri atas bilangan ganjil yang muncul di li 
    dengan urutan kemunculan yang sama. -}

-- REALISASI
filterGanjil li = 
    let konso e l = e : l
    in
        if null li then []
        else if mod (head li) 2 /= 0 then konso (head li) (filterGanjil (tail li))
        else filterGanjil (tail li)