-- Param: a list
-- Return: number composed by the numbers of the list in reversed order
mistery :: [Int] -> Int
mistery list = foldr1 (+) $
               map (\ (a,b) -> a*b) $
               zip list $
               map (10^) [0..]
