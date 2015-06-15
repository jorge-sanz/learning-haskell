-- Determine whether a given integer number is prime.
isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime x = [2..x-1] == (filter (\y -> (mod x y) /= 0)  [2..x-1])
