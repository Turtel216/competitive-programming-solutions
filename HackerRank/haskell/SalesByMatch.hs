{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/sock-merchant/problem
 -
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Data.List

solve :: [Int] -> Int
solve = sum . map (\xs -> length xs `div` 2) . group . sort

main :: IO ()
main = interact $ show . solve . map read . tail . words
