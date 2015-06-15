-- Param: a list
-- Return: number composed by the numbers of the list
listToNumber :: [Int] -> Int
listToNumber list = foldr1 (+) $
               map (\ (a,b) -> a*b) $
               zip list $
               map (10^) [length list-1, length list - 2..0]
