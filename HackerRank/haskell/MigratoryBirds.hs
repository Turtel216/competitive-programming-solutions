{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/migratory-birds/problem
 -
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

module MigratoryBird where

import Data.Function
import Data.List

solve :: [Int] -> Int
solve xs = head $ head $ sortBy (flip compare `on` length) $ group $ sort xs

main :: IO ()
main = interact $ show . solve . map read . tail . words
