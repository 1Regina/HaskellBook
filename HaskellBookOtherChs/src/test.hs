
myOr5 = foldr
  (\a b -> case a of
    1 -> 1
    0 -> b) 0
checkOr = myOr5 [0, 0, 0, 0, 1]
-- check4 fails to reflect
-- check4 = mapM_ print $ reduction $ checkOr

myOr9 = foldr
  (\a b -> if a == 1
    then 1
    else b) 0
-- check5 fails to reflect

checkOr2 = myOr9 [5, 0, 0, 0, 1]