-- https://github.com/karolyangqian/tugas1_haskell
-- APAKAH DATE VALID?                     isDateValid(d, m, y)
-- DEFINISI DAN SPESIFIKASI
isDateValid :: Int -> Int -> Int -> Bool
{-  isDateValid(d, m, y) mengembalikan true jika d m y membentuk date yang valid.
    Definisi date yang valid adalah jika elemen hari (d) bernilai antara 1 dan 31, 
    tergantung bulan dan apakah tahun kabisat atau bukan, elemen bulan (m)
    bernilai antara 1 dan 12, dan elemen tahun (y) bernilai antara 0 dan 99.
    Nilai y mewakili tahun 1900 s.d. 1999 -}

isKabisat :: Int -> Bool
{-  isKabisat(y) mengembalikan true jika tahun 1900 + y
    habis dibagi 4 dan false jika tidak habis dibagi 4. -}

-- REALISASI
isKabisat y = (1900 + y) `mod` 4 == 0

isDateValid d m y =
    (y >= 0 && y <= 99)
  &&
    (if isKabisat y && m == 2 then
         d >= 1 && d <= 29
    else if not (isKabisat y) && m == 2 then
      d >= 1 && d <= 28
     else
         (m >= 1 && m <= 12)
  &&
    ((mod m 2 == 0 && d >= 1 && d <= 30)
  || (mod m 2 /= 0 && d >= 1 && d <= 31)))