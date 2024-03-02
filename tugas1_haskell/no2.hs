-- https://github.com/karolyangqian/tugas1_haskell
-- JUMLAH DETIK                    jumlahDetik(j, m, d)
-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
{-  jumlahDetik j m d menghitung jumlah detik dari jam valid yang diberikan dalam
    jam (j), menit (m), dan detik (d). -}

-- REALISASI
jumlahDetik j m d
    | (0 <= j && j <= 23) && (0 <= m && m <= 59) && (0 <= d && d <= 59) = j * 3600 + m * 60 + d