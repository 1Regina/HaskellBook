--Q1
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

a) :t k results in k :: (a, b) -> a
b) k2 :: [Char] but k1 and k3 is k1 :: Num a => a and k3 :: Num a => a
   k2 becomes a string but k1 and k3 becomes a number


--Q2
f :: (a, b, c) 
  -> (d, e, f) 
  -> ((a, d), (c, f))

f (a, b, c) (d, e, f) = ((a, d), (c, f))