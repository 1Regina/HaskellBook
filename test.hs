{-# LANGUAGE FlexibleInstances #-}
-- newtype IntSum' = IntSum' (Int, Int) deriving (Eq, Show, Num, TooMany)
-- instance (Num a, TooMany a) => TooMany (a, b) where tooMany (x, y) = tooMany (x + y)

instance (Num a, TooMany a) => TooMany (a, a) where tooMany x = tooMany (fst x) || tooMany (snd x)
