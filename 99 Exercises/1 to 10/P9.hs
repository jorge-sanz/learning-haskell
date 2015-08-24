-- Pack consecutive duplicates of list elements into sublists. If a list
-- contains repeated elements they should be placed in separate sublists.
pack :: (Eq a) => [a] -> [a]
pack [] = error "Empty list"
pack [x] = [[x]]
pack list@(x:xs)
  | 
