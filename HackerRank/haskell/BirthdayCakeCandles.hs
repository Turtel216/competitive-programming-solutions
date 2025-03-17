{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/birthday-cake-candles/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

solve :: [Int] -> Int
solve lst = length $ filter (\x -> x == maximum lst) lst

getList :: (Read a) => IO [a]
getList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- getLine
  lst <- getList
  print $ solve lst
