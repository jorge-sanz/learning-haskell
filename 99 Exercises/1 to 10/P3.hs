-- Find the K'th element of a list. The first element in the list is number 1.
elementAt :: [a] -> Int -> a
elementAt [] number = error "Empty list or IndexBounds"
elementAt (x:_) 1 = x
elementAt list@(x:xs) number = elementAt (tail list) (number - 1)
