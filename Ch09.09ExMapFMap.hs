--Q1     take 1 $ map (+1) [undefined,2, 3]  bottom bcos cannot take (+1) to undefined
--Q2     take 1 $ map (+1) [  1, undefined, 3] returns [2]
--Q3     take 2 $ map (+1) [  1, undefined, 3] bottom bcos the 2nd in take 2 is taking an undefined
--Q4     itIsMystery xs = map (\x -> elem x "aeiou") xs  type is itIsMystery :: [Char] -> [Bool]. When applied on a list of character, it returns a list of Bool depending whether the character is a vowel

itIsMystery :: [Char] -> [Bool]
itIsMystery xs = map (\x -> elem x "aeiou") xs 
-- >>> itIsMystery ['p' , 'e' , 'i']
-- [False,True,True]
--

--Q5a
-- >>>map(^2) [  1..10]
-- [1,4,9,16,25,36,49,64,81,100]
--
--Q55b
-- >>> map minimum [[1..10], [10..20], [20..30]]
-- [1,10,20]
--
--Q5c
-- >>> map sum [[1..5], [1..5], [1..5]]
-- [15,15,15]
--
-- >>> sum[1..5]
-- 15
--
--Q6 import Data.Bool
-- >>> import Data.Bool
-- >>> map (\x -> bool x (-x) (x == 3)) [1..10]
-- [1,2,-3,4,5,6,7,8,9,10]
--
