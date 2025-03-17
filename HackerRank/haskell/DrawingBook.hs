{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/counting-valleys/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

solve :: [Int] -> Int
solve [n, p] = min fromFront fromBack
  where
    fromFront = p `div` 2
    fromBack = n `div` 2 - fromFront

main :: IO ()
main = interact $ show . solve . map read . words
