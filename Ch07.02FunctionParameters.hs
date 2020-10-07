myNum :: Integer
myNum = 1

myVal = myNum

-- >>> :t myVal
-- myVal :: Integer
--

myVal1 f = myNum
-- >>> :t myVal1
-- myVal1 :: p -> Integer
--
-- type p is polymorphic and f is maximally polymorphic
-- 
myNum = 1:: Integer
myVal2 f = f + myNum
-- >>> :t myVal2
-- myVal2 :: Integer -> Integer
--
myNum' = 1:: Integer
myVal3 f g = myNum'
-- :t myVal3 should be myVal3 :: t -> t1 -> Integer
-- >>> :t myVal3
-- (Error while loading modules for evaluation)
-- [1 of 1] Compiling Main             ( C:\Users\regina\Desktop\SMU\HaskellBook\Ch07FunctionParameters.hs, interpreted )
-- <BLANKLINE>
-- C:\Users\regina\Desktop\SMU\HaskellBook\Ch07FunctionParameters.hs:16:1-5: error:
--     Multiple declarations of `myNum'
--     Declared at: C:\Users\regina\Desktop\SMU\HaskellBook\Ch07FunctionParameters.hs:2:1
--                  C:\Users\regina\Desktop\SMU\HaskellBook\Ch07FunctionParameters.hs:16:1
-- Failed, no modules loaded.

myVal f g h = myNum
-- :t myVal should return myVal :: t -> t1 -> t2 -> Integer