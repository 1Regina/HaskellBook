f :: Int -> [Int] -> Int
f z xs = foldr (+) z xs

-- f = fold (+)

-- >>> f 0 [1..5]
-- (Error while loading modules for evaluation)
-- [1 of 1] Compiling Main             ( C:\Users\regina\Desktop\SMU\HaskellBook\Ch07.9PointFree.hs, interpreted )
-- <BLANKLINE>
-- C:\Users\regina\Desktop\SMU\HaskellBook\Ch07.9PointFree.hs:(2,1)-(4,12): error:
--     Equations for `f' have different numbers of arguments
--       C:\Users\regina\Desktop\SMU\HaskellBook\Ch07.9PointFree.hs:2:1-23
--       C:\Users\regina\Desktop\SMU\HaskellBook\Ch07.9PointFree.hs:4:1-12
-- Failed, no modules loaded.
--
