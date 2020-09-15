--Q1
--All are equivalent because of currying

--Q2 
-- d see mth x = \y -\z -> x * y * z
mTh a :: Num a => a -> a -> a -> a
-- mTh x y z  = x * y * z

-- 3 :: Num a => a

--Q3
addOne x = x + 1
-- similar to 
addOne = \x -> x + 1

--Q3a
f n = n + 1
-- similar to 
f' = \n -> n + 1

--Q3b
addFive x y = ( if x > y then y else x) + 5
-- similar to 
addFive' = \x -> y -> ( if x > y then y else x) + 5

--Q3c
mflip f= \x-> \y -> f y x
-- similar to 
myflip f x y = f y x