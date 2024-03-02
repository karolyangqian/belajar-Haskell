module KonversiSuhu where

konversiSuhu :: Float -> Char -> Float

konversiSuhu t k
    | k == 'R' = 4/5 * t
    | k == 'F' = (9/5 * t) + 32
    | k == 'K' = t + 273.15

