{--
7.

Define a function that joins a list of lists together using a separator value. 28 comments

-- file: ch03/Intersperse.hs
intersperse :: a -> [[a]] -> [a]
4 comments
The separator should appear between elements of the list, but should not follow the last element. Your function should behave as follows

--}

my_intersperse :: a -> [[a]] -> [a]
my_intersperse _ [] = []
my_intersperse c (x:xs) 
 | null (xs) = x
 | otherwise = x ++ [c] ++ (my_intersperse c xs)



