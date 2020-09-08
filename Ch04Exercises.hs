module IsPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = 
    (reverse x == x) == True


--Q4. 
-- divisible :: Num -> Num
-- divisible = 6 `div` length [1,2,3]

myAbs:: Integer-> Integer
myAbs x = 
    if x > 0
        then x
    else  negate x 

f :: (a,b) -> (c,d) -> ((b,d),(a,c))
f p q = ((snd p, snd q), (fst p, fst q))


-- addOne :: a -> a
-- x = (+)
-- adding xs = w `x` 1
--   where w = length xs
j = (+)
adding xs = w `j` 1
  where w = length xs -- xs must be list

id :: x -> x
id x = x

start :: (a,b) -> a 
start (a,b) = fst (a,b)

--Match
-- Q1 c) Show a => a -> String is the type of Show
-- Q2 b) Eq a =>a -> a -> Bool is the type of ==
-- Q3 a) (a, b) -> a is the type of fst
-- Q4 d) Num a => a -> a -> a is the type of +