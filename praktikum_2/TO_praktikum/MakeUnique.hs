makeUnique :: [Char] -> [Char]
isEmpty :: [Char] -> Bool
isOneElmt :: [Char] -> Bool
isIn :: Char -> [Char] -> Bool
konso :: Char -> [Char] -> [Char]

isEmpty lc = null lc
isOneElmt lc = length lc == 1
konso e lc = e : lc
isIn x lc 
    | isEmpty lc = False
    | x == head lc = True
    | otherwise = isIn x (tail lc)
makeUnique lc
    | isEmpty lc = []
    | otherwise =
        let subLc = makeUnique (tail lc)
        in
            if isIn (head lc) subLc then subLc
            else konso (head lc) subLc