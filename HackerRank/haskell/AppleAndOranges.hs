{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/apple-and-orange/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

solve :: [Int] -> [Int]
solve (s : t : a : b : m : n : rest) = [as, os]
  where
    as = length $ filter (\x -> s <= x && x <= t) $ map (+ a) $ take m rest
    os = length $ filter (\x -> s <= x && x <= t) $ map (+ b) $ drop m rest

main = interact $ unlines . map show . solve . map read . words
