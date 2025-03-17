{-
 - Problem Statement from HackerRank
 -
 - You can read the full problem state here: https://www.hackerrank.com/challenges/apple-and-orange/problem
 -
 - NOTE: This does not run in GHCI, only on hacker rank
 -
-}

solve :: [Int] -> [Int] -> Int
solve as bs =
  length $
    filter (\x -> bsGcd `mod` x == 0) $
      takeWhile (<= bsGcd) $
        map (* asLcm) [1 ..]
  where
    asLcm = fold lcm as
    bsGcd = fold gcd bs

fold :: (a -> a -> a) -> [a] -> a
fold f [] = error "list is empt"
fold f [x] = x
fold f (x : xs) = f x (fold f xs)

readIntList :: IO [Int]
readIntList = do
  line <- getLine
  return $ map read $ words line

main = do
  [n, m] <- readIntList
  as <- readIntList
  bs <- readIntList
  putStrLn $ show $ solve as bs
