-- JUMLAH DIGIT                     sumOfDigits n

-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
{-  Fungsi sumOfDigits n menerima sebuah integer n lalu
    mengembalikan jumlah dari setiap digit dari n. Apabila
    n negatif, tanda (-) diabaikan.-}

-- REALISASI
sumOfDigits n = 
    let
        sumOfDigitsPosNeg a = sumOfDigits(-a)
        -- sumOfDigitsPosNeg a menerima a sebagai negatif dari input sumOfDigits
    in
        if n < 0 then sumOfDigitsPosNeg n
        else if n < 10 then n
        else sumOfDigits(div n 10) + mod n 10