{--

1.

Write a function that computes the number of elements in a list. To test it, ensure that it gives the same answers as the standard length function.

--}
myLen::[a] -> Int
myLen [] =  0
myLen (x:xs) = 1 + myLen xs

-- using guard

myLen2::[a] -> Int
myLen2 xs 
 | null xs = 0
 | otherwise  = 1 + (myLen2 $ tail xs)
