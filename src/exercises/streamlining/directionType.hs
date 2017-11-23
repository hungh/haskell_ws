{-- 

9.

Consider three two-dimensional points a, b, and c. 
If we look at the angle formed by the line segment from a to b and the line segment from b to c,
it either turns left, turns right, or forms a straight line. 
Define a Direction data type that lets you represent these possibilities.
--}

data Turn = Null | ToLeft | ToRight | Straight 
data Direction a = Points [ (a,a, Turn) ]

sample = Points [ (1,2, ToRight), (6,3, ToLeft), (9,3, Null)]