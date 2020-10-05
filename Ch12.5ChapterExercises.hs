module Stringy where

import Data.Char
import Data.List
-- Determine kinds

-- Q1
-- id :: a ->a 

-- >>> :k a
 
-- a :: *

-- Q2 
-- r ::a -> f a
-- a :: *
-- f :: * -> *

-- String Processing
-- Q1
-- data Maybe a = Nothing | Just a

notThe :: String -> Maybe String
notThe "the" = Nothing
notThe s = Just s

-- >>>   notThe "the"

notThe' :: String -> Maybe String
notThe' x = if  x /= "the"
            then Just x
            else Nothing

-- >>> notThe' "the"


-- >>> 2 + 3

--

-- replaceWithA :: Maybe String -> String
-- replaceWithA ( Just x) = x
-- replaceWithA Nothing = "a"

replaceThe :: String -> String
replaceThe = unwords . map (replaceWithA  . notThe) . words 
    where replaceWithA ( Just x) = x
          replaceWithA Nothing = "a"

-- Q2


-- vowel = 
-- countTheBeforeVowel :: String -> Integer
