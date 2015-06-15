marksTell :: (RealFloat a) => a -> a -> String
marksTell a b c d e
  | average <= failed = "Failed"
  | average <= regular = "Regular"
  | average <= good = "Good"
  | average <= reallyGood = "Really good"
  | otherwise = "Excellent"
  where average = (a + b + c + d + e) / 5
        failed = 5.00
        regular = 6.00
        good = 7.00
        reallyGood = 8.50
