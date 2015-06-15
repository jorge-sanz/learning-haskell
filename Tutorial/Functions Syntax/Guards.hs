marksTell :: (RealFloat a) -> String
markTell mark
  | mark <= 5.00 = "Failed"
  | mark <= 6.00 = "Regular"
  | mark <= 7.00 = "Good"
  | mark <= 8.50 = "Really good"
  | otherwise = "Excellent"

-- Imagine you don't want to calculate average mark of 5 subjects
betterMarksTell :: (RealFloat a) => a -> a -> a -> a -> a -> String
betterMarksTell a b c d e
  | (a + b + c + d + e) / 5 <= 5.00 = "Failed"
  | (a + b + c + d + e) / 5 <= 6.00 = "Regular"
  | (a + b + c + d + e) / 5 <= 7.00 = "Good"
  | (a + b + c + d + e) / 5 <= 8.50 = "Really good"
  | otherwise = "Excellent"

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT
