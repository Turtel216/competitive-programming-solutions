{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

module DivisibleSumPairs where

solve :: [Int] -> Int
solve (k : xs) =
  length
    [ undefined
      | (i, xi) <- zip [0 ..] xs,
        (j, xj) <-
          zip [0 ..] xs,
        i < j,
        (xi + xj) `mod` k == 0
    ]

main :: IO ()
main = interact $ show . solve . map read . tail . words
