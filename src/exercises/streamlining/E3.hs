{--
3.

Write a function that computes the mean of a list, i.e. the sum of all elements in the list divided by its length. (You may need to use the fromIntegral function to convert the length of the list from an integer into a floating point number.)
--}
meanOf:: [Int] -> Float
meanOf [] = 0
meanOf xs = 
 let tem = sumL(xs)
     s = fst tem
     l = snd tem
 in fromIntegral (s)/fromIntegral (l)
 
sumL::[Int] -> (Int, Int)
sumL [ ] = (0,0)
sumL (x:xs)
  | null (xs) = (x, 1)
  | otherwise = (x + fst rSumL, 1 + snd rSumL) where rSumL = sumL(xs) 
