{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/diagonal-difference/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Data.List (unfoldr)

parseMatrix :: String -> ([[Int]], Int)
parseMatrix input =
  let (firstLine : rest) = lines input
      n = read firstLine :: Int
      matrix = map (map read . words) (take n rest)
   in (matrix, n)

diagonalDifference :: [[Int]] -> Int
diagonalDifference matrix = abs (mainDiagonalSum - antiDiagonalSum)
  where
    n = length matrix
    mainDiagonalSum = sum [matrix !! i !! i | i <- [0 .. n - 1]]
    antiDiagonalSum = sum [matrix !! i !! (n - 1 - i) | i <- [0 .. n - 1]]

main :: IO ()
main = do
  input <- getContents
  let (matrix, _) = parseMatrix input
  print $ diagonalDifference matrix
