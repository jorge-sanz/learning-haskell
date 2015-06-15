lucky :: (Integral a) => a -> String
lucky 7 = "Seven of lucky"
lucky x = "Sorry, this is not your lucky day"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe x = "No [1-3]"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Bernt"
charName x = "Hi"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- We make sure function receives two duples as parameters
addVectorsBetterWay :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectorsBetterWay (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Hi! I'm here to tell you can't use head with an empty list"
head' (x: _) = x

tell :: (Show a) => [a] -> String
tell [] = "Empty list"
tell (x:[]) = "This list has one element: " ++ show x
tell (x:y:[]) = "This list has two elements " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is too long. First two elements are: " ++ show x ++
" and " ++ show y

length' :: (Num b) => [a] -> b
length' :: [] = 0
length' (_:xs) = 1 + length' xs

sum' :: String -> String
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string!"
capital all@(x,_) = "La primera letra de " ++ all ++ " es " ++ [x]
