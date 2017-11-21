{--
8.

Using the binary tree type that we defined earlier in this chapter, write a function that will determine the height of the tree. 
The height is the largest number of hops from the root to an Empty.
For example, the tree Empty has height zero; Node "x" Empty Empty has height one; Node "x" Empty (Node "y" Empty Empty) has height two; and so on.
--}

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

getHeight:: (Tree a) -> Int
getHeight Empty = 0
getHeight (Node _ l r)  = 1 + max (getHeight l) (getHeight r)

sampleTree = Node "x" Empty Empty 
sampleTree2 = Node "x" Empty (Node "y" Empty Empty)
sampleTree3 = Node "x" Empty (Node "y" Empty sampleTree2)