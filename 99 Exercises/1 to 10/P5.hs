-- Reverse a list.
reverseAList :: [a] -> [a]
reverseAList [] = []
reverseAList [x] = [x]
reverseAList list@(x:xs) = (last list):(reverseAList (init list))
