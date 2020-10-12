import Data.Monoid
ys = [2, 4, 6] :: [Sum Int]
-- >>> foldr mappend mempty ys
-- (Error while loading modules for evaluation)
-- [1 of 1] Compiling Main             ( /Users/regina/Code/haskell/src/HaskellBook/Ch15.07Monoids.hs, interpreted )
-- <BLANKLINE>
-- /Users/regina/Code/haskell/src/HaskellBook/Ch15.07Monoids.hs:1:20-22: error:
--     Not in scope: type constructor or class ‘Sum’
--     Perhaps you meant ‘Num’ (imported from Prelude)
-- Failed, no modules loaded.
--


-- >>> 2 + 3
-- (Error while loading modules for evaluation)
-- [1 of 1] Compiling Main             ( /Users/regina/Code/haskell/src/HaskellBook/Ch15.07Monoids.hs, interpreted )
-- <BLANKLINE>
-- /Users/regina/Code/haskell/src/HaskellBook/Ch15.07Monoids.hs:1:20-22: error:
--     Not in scope: type constructor or class ‘Sum’
--     Perhaps you meant ‘Num’ (imported from Prelude)
-- Failed, no modules loaded.
--
