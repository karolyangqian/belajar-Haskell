module DasPro where

dasPro :: Int -> Int -> Int -> Int -> Int

dasPro das pro x y= 
    let a = das * x
        b = pro * y
    in  if a > b then a else b