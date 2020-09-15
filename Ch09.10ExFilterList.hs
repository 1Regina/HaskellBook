--Filtering
--Q1
-- >>> filter (\x -> (rem x 3) == 0) [1..30]
-- [3,6,9,12,15,18,21,24,27,30]
--
--Q2
-- >>> length  (filter (\x -> (rem x 3) == 0) [1..30])
-- 10
--
--Q3
myFilter :: String -> [String]
myFilter str = filter (\x -> not (elem x ["the", "a", "an"])) (words str)
 -- words is a function String -> [String]
-- >>> myFilter "the brown dog was a goof"
-- ["brown","dog","was","goof"]
--
