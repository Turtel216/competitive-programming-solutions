{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/electronics-shop/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

import Control.Monad (liftM2)
import Data.List (sortBy)
import Data.Maybe (fromMaybe, listToMaybe)

solve :: Int -> [Int] -> [Int] -> Int
solve b keyboards drives =
  fromMaybe (-1) $
    listToMaybe $
      sortBy (flip compare) $
        filter (<= b) $
          liftM2 (+) keyboards drives

getList :: (Read a) => IO [a]
getList = map read . words <$> getLine

main :: IO ()
main = do
  [b, _, _] <- getList
  keyboards <- getList
  drives <- getList
  print (solve b keyboards drives)
