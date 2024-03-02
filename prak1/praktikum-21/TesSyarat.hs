module TesSyarat where

tesSyarat :: Float -> Float -> Int

tesSyarat ip pot
    | ip >= 0 && ip <= 4 && pot >= 0 =
        if ip >= 3.5 then 4
        else if pot < 1 && ip < 3.5 then 1
        else 0
        
