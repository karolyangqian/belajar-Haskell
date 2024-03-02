movePlayer :: Int -> Int -> Char -> Bool -> (Int, Int)

movePlayer r c m j=
    if r == 1 && c == 1 then
        if j && m == 'L' then (5, 5)
        else if m == 'R' then (1, 2)
        else (r, c)
    else if r == 5 && c == 5 then
        if j && m == 'R' then (1, 1)
        else if m == 'L' then (5, 4)
        else (r, c)
    else if m == 'R' then
        if c < 5 then (r, c+1) else (r, c)
    else if m == 'L' then
        if c > 1 then (r, c-1) else (r, c)
    else (r, c)