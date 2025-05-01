{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/magic-square-forming/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Data.List

type MSquare = [[Int]]

rot90 :: MSquare -> MSquare
rot90 = map reverse . transpose

reflect :: MSquare -> MSquare
reflect = transpose

distance :: MSquare -> MSquare -> Int
distance m1 m2 = sum $ map abs $ zipWith (-) (concat m1) (concat m2)

magic :: MSquare
magic = [[8, 1, 6],
        [3, 5, 7],
        [4, 9, 2]]

allMagic :: [MSquare]
allMagic = (take 4 $ iterate rot90 magic) ++ (take 4 $ iterate rot90 $ reflect magic)

solve :: MSquare -> Int
solve m = minimum $ map (distance m) allMagic

main :: IO ()
main = interact $ show . solve . map (map read . words) . lines
