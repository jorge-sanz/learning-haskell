-- Find the number of elements of a list.
numberOfListElements :: [a] -> Int
numberOfListElements [] = 0
numberOfListElements (x:xs) = 1 + numberOfListElements xs
