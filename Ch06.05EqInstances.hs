--Q1
data TisAnInteger = TisAn Integer            -- Data is used to declare a type. Here the type is called TisAnInteger
instance Eq TisAnInteger where              -- declare Eq type class for the TisAnInteger datatype
    TisAn x  == TisAn x'  = x == x'          --  p272 how to test this datatype for equality. x and x' must be declared to be Eq type too

--wont compile bcos Tra is not a type
-- data ExtraTest  = Ext Tra
-- instance Eq ExtraTest where 
--     Ext p  == Ext p'  = p == p'  


-- --Q2
-- x x == x' x'
-- 3 3 == 5 5
data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where                -- declare Eq type class for TwoIntegers datatype
  Two 0 integer2 == Two 0 integer2' = integer2 == integer2'    -- Optional / redundant         
  Two integer1 0 == Two integer1' 0 = integer1 == integer1'    -- redundant / Optional
  Two integer1 integer2 == Two integer1' integer2' = integer1 == integer1' && integer2 == integer2'

--Q3
data StringOrInt =TisAnInt Int | TisAString String  
instance Eq StringOrInt where
    TisAnInt int  == TisAnInt int'  = int == int' 
    TisAString string == TisAString string' = string == string'
    TisAnInt _  == TisAString _  = False
    TisAString _ == TisAnInt _    = False


--Q4
data Pair a = Pair a a 
instance (Eq a) => Eq (Pair a) where         -- must define typeclass for the Pair a as a class of Eq bcos a is unknown as belonging to Eg class unlike Int Integer or String
    Pair x1 x1'  == Pair x2 x2' =  x1 == x2 && x1' == x2'     --question requirement
    -- Pair x1 x1'  == Pair x2 x2' = x1 == x1' && x2 == x2' && x1 == x2 && x1' == x2' --still compiles but not required for question x1 == x1' && x2 == x2' 
    -- Pair _ _     == Pair _ _  = False  -- redundant bcos wont need this scenario of wild card like in Q3

                                                             
-- >>> Pair 1 2 == Pair 1 2
-- True
--

--Q5
data Tuple a b = Tuple a b 
instance (Eq c, Eq d)  => Eq (Tuple c d) where  -- Allows Tuple to be checked for equality with == and /= whenever there are Eq instances for both component types
    Tuple x3 x3' == Tuple x4 x4' = x3 == x4 && x3' == x4'

--- >>> Tuple 2 3 == Tuple 1 3
--- False
---

--Q6
data Which a = ThisOne a | ThatOne a
instance (Eq c) =>  Eq (Which c) where
    ThisOne x == ThatOne x' = x == x' 
    ThatOne x == ThisOne k = x == k
    ThisOne x == ThisOne x' = x == x'
    ThatOne p == ThatOne x' = p == x'

-- >>> ThisOne 1 == ThatOne 2
-- False
-- >>> ThatOne 4 == ThisOne 4
-- True
--
-- >>> ThisOne 1 == ThisOne 1
-- True
-- >>> ThatOne 5 == ThatOne 3
-- False
--

--Q7 Need help
data EitherOr a b = Hello a | Goodbye b
instance (Eq c, Eq d ) =>  Eq ( EitherOr c d) where                 -- Try 1
-- instance (Eq a, Eq b) => Eq (EitherOr a) Eq (EitherOr b)  where     -- Try 2
-- instance Eq (EitherOr a b)  where                                   -- Try 3
-- instance Eq (a) => Eq (EitherOr a b) where                          -- Try 4
    -- Hello x == Goodbye x' = x == x'
    -- Goodbye h == Hello h' = h == h'
    Hello i == Hello i' = i == i'
    Goodbye j == Goodbye j' = j == j'
    -- (==) _ _                = False -- 2 options to write false
    _ == _                  = False    -- 2 options to write false
    
-- >>> Hello 4 == Hello 4
-- True
--
-- >>> Hello 5 == Goodbye 6
-- False
--


