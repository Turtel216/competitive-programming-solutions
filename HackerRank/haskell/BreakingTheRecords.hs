{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Data.List

solve :: [Int] -> [Int]
solve xs = [best, worst]
  where
    best = (length $ group $ map maximum $ tail $ inits xs) - 1
    worst = (length $ group $ map minimum $ tail $ inits xs) - 1

main :: IO ()
main = interact $ unwords . map show . solve . map read . tail . words
