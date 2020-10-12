module Ch3exercises where

-- curry :: String
-- curry = "Curry is awesome"

main :: IO ()
main = do
    putStr curry 
    putStrLn "!"
    where curry  = "curry is awesome"
    
-- edit :: String -> IO ()
-- edit x =
--     take x curry
choose x = take x words
    where words = "curry is awesome"

exclude x = drop x words
    where words = "curry is awesome"


thirdletter :: String -> Char
thirdletter x = x !! 2 


letterIndex :: Int -> Char
letterIndex x = "curry is awesome" !! x



