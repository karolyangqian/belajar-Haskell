-- https://github.com/karolyangqian/tugas1_haskell
-- APAKAH JAM VALID?                    isJamValid(j, m, d)
-- DEFINISI DAN SPESIFIKASI
isJamValid :: Int -> Int -> Int -> Bool
{-  isJamValid(j, m, d) menghasilkan nilai true jika j, m, d menyusun jam
    yang valid. Definisi jam yang valid adalah jika elemen jam (j)
    bernilai antara 0 dan 23, elemen menit (m) bernilai antara 0 dan 59,
    dan elemen detik (d) bernilai antara 0 dan 59. -}

-- REALISASI
isJamValid j m d = (0 <= j && j <= 23) && (0 <= m && m <= 59) && (0 <= d && d <= 59)