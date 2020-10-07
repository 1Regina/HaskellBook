-- divideThenAdd x y = (x / y) + 1
-- divideThenAdd :: Num a => a -> a -> a
-- divideThenAdd x y = (x / y ) + 1

-- error bcos / operator is for Fractional and not Num type . Correct this by 
divideThenAdd :: Fractional a => a -> a -> a
divideThenAdd x y = (x / y ) + 1


-- >>> divideThenAdd 10 5
-- 3.0
--
--Thinking Cap : 
f ::(Num a, Fractional a) => a -> a -> a --works bcos Fractional is a subclass of Num
f x y  = (x / y) + 1
-- >>> f 6 2
-- 4.0
--

numId = id :: Num a => a -> a
intId = numId :: Int -> Int
numId' = intId :: Num a =>  a ->  a --wont work bcos actual type is more concrete than expected type

-- >>> numId 4
-- 4
-- >>> intId 4
-- 4
-- >>> numId' 4 --mismatch error between expected and actual type!
-- <interactive>:264:2-9: error:
--     * No instance for (Show (Int -> Integer))
--         arising from a use of `print'
--         (maybe you haven't applied a function to enough arguments?)
--     * In a stmt of an interactive GHCi command: print it
--


