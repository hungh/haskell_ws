{--
6.

Create a function that sorts a list of lists based on the length of each sublist. (You may want to look at the sortBy function from the Data.List module.)
--}
import Data.List (sortBy)

sortListByLen::[[a]] -> [[a]]
sortListByLen [] = []
sortListByLen xs = sortBy lengthOrder xs
-- natural order 
naturalOrder x y = if x == y then EQ else if x > y then GT else LT
-- by length
lengthOrder x y = 
 let xl = length x
     yl = length y
 in naturalOrder xl yl

