import Data.Monoid ( Sum )
ys :: [Sum Int]
ys = [2, 4, 6] :: [Sum Int]
-- >>> foldr mappend mempty ys
-- Sum {getSum = 12}
--


-- >>> 2 + 3
-- 5
--
