{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/bon-appetit/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Control.Monad

exclude :: Int -> [a] -> [a]
exclude n xs = left ++ tail right
  where
    (left, right) = splitAt n xs

solve :: Int -> [Int] -> Int -> Maybe Int
solve k bill b
  | b > actualPrice = Just (b - actualPrice)
  | otherwise = Nothing
  where
    actualPrice = (sum $ exclude k bill) `div` 2

getList :: (Read a) => IO [a]
getList = do
  line <- getLine
  return $ map read $ words line

main :: IO ()
main = do
  [[_, k], bill, [b]] <- replicateM 3 getList
  putStrLn $ maybe "Bon Appetit" show $ solve k bill b
