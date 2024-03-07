module MaxNb where
import MaxList (isOneElmt)

maxNb :: [Int] -> (Int, Int)
-- maxNb(li) menghasilkan <nilai max, kemunculan nilai max>
-- dari suatu list of integer li: <m,n> dengan m adalah nilai
-- maksimum di li dan n adalah jumlah kemunculan m dalam li

maxNb li
    | isOneElmt li = (head li, 1)
    | otherwise =
        let 
            (m, n) = maxNb (init li)
        in
            if last li > m then (last li, 1)
            else if last li == m then (m, n+1)
            else (m, n)