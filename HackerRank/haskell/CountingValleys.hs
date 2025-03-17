{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/counting-valleys/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Data.List

delta :: Char -> Int
delta 'U' = 1
delta 'D' = -1

solve :: String -> Int
solve =
  length
    . filter (all (< 0))
    . groupBy (\x y -> x /= 0 && y /= 0)
    . scanl (+) 0
    . map delta

main :: IO ()
main = interact $ show . solve . head . tail . words
