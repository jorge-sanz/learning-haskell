-- Find the last but one element of a list.
lastButOneElementOfList :: [a] -> a
lastButOneElementOfList [] = error "Empty list"
lastButOneElementOfList [x,y] = x
lastButOneElementOfList allList@(x:xs) = lastButOneElementOfList (tail allList)
