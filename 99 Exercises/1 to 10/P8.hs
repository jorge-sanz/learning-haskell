-- Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced with a single
-- copy of the element. The order of the elements should not be changed.
compress :: (Eq a) => [a] -> [a]
compress [] = error "Empty list."
compress [x] = [x]
compress list@(x:xs)
  | x /= (head xs) = x:(compress xs)
  | otherwise = compress xs
