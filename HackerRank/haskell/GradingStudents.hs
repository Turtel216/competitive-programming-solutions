{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/grading/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

round5 :: Int -> Int
round5 x
  | x >= 38 && (multFive - x) < 3 = multFive
  | otherwise = x
  where
    multFive = x + (5 - x `mod` 5)

solve :: [Int] -> [Int]
solve xs = map round5 xs

main = interact $ unlines . map show . solve . map read . tail . words
