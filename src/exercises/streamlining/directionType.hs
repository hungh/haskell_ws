{-- 
9.Consider three two-dimensional points a, b, and c. 
If we look at the angle formed by the line segment from a to b and the line segment from b to c,
it either turns left, turns right, or forms a straight line. 
Define a Direction data type that lets you represent these possibilities.
--}

data Turn = ToLeft | ToRight | Straight deriving (Show)
data Direction = Direction [Turn] deriving (Show)
data Point a = Point { xpos:: a, ypos:: a} deriving (Show)

-- 10. Write a function that calculates the turn made by three 2D points and returns a Direction.

calculateTurns::Ord a => Point a -> Point a -> Point a -> Direction
calculateTurns a b c = 
 let xa = xpos a
     xb = xpos b
     xc = xpos c
 in Direction [ getTurn xa xb, getTurn xb xc]
 
getTurn:: Ord a => a -> a -> Turn 
getTurn m n = if m == n then Straight else if m > n then ToLeft else ToRight


