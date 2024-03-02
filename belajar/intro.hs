-- this is a comment
{-
multiple comments
-}

{-
Glasgow Haskell Compiler (GHCi)
    run ghci in terminal> ghci

How to load and run files
    Load
        :l <filename>
        contoh:
            ghci> :l someFunc

    Run
        :r
    
-}

import Data.List
import System.IO
import Language.Haskell.TH (valD)

-- Int -2^63 2^63
minInt = minBound :: Int
maxInt = maxBound :: Int
-- Double
bigFloat = 3.999999999999 + 0.000000000005 -- max precision 11 decimals

-- Bool Char Tuple

always5 :: Int
always5 = 5

modEx :: Integer
modEx = mod 5 4
modEx2 = 5 `mod` 3

num9 :: Int
num9 = 9 :: Int
sqrtof9 = sqrt(fromIntegral num9)

valT = True
andval :: Bool
andval = valT && False
orval = valT || False
notTrue = not valT