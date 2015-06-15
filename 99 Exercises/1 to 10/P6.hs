-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [a] = True
isPalindrome list@(x:xs)
  | (head list) == (last list) = True && (isPalindrome (tail(init list)))
  | otherwise = False
