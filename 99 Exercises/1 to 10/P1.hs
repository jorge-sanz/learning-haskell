-- Find the last element of a list.
lastElementOfList :: [a] -> a
lastElementOfList [] = error "Empty list"
lastElementOfList [x] = x
lastElementOfList (x:xs) = lastElementOfList xs
