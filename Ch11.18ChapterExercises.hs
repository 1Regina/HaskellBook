--MCQ
--Q1 a
--Q2 c
--Q3 b
--Q4 c

-- >>> (2 + 3)
-- 5

-- doubleUp :: Show a => [a] -> [a]
doubleUp :: [a] -> [a]
doubleUp [] = []
doubleUp xs@(x: _ ) = x : xs

-- >>>  doubleUp []
-- >>> doubleUp [1]
-- >>> doubleUp [1, 2]
-- >>>  doubleUp [1, 2, 3]

