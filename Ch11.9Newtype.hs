newtype Goats = Goats Int deriving Show
class TooMany a where tooMany :: a-> Bool
instance TooMany Int where tooMany n = n>42
instance TooMany Goats where tooMany (Goats n) = n>43

-- >>> :t tooMany
-- tooMany :: TooMany a => a -> Bool
--