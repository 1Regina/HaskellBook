module TypeInference where

-- TypeInference1
f1 :: Num a => a -> a -> a
f1 x y = x + y + 3

-- TypeInference2
f2 x y = x + y + 3