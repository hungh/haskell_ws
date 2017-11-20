{--
5.

Write a function that determines whether its input list is a palindrome.
--}

isPalindrome::Eq a => [a] -> Bool
isPalindrome []  = False
isPalindrome (x:[]) = True
isPalindrome [x,y] = x == y
isPalindrome (x:xs) 
 | x == last xs = isPalindrome $ take (length xs - 1) xs
 | otherwise = False
 
 

