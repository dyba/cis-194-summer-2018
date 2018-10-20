module Homework.Week01.Assignment where

-- Uses iterative recursion
toDigitsAux :: Integer -> [Integer] -> [Integer]
toDigitsAux 0 xs = xs
toDigitsAux i [] = toDigitsAux (i `div` 10) [i `mod` 10]
toDigitsAux i xs = toDigitsAux (i `div` 10) ((i `mod` 10) : xs)

-- Other Implementation:
--
-- toDigits :: Integer -> [Integer]
-- toDigits 0 = []
-- toDigits i = toDigitsAux i []

-- #1a -- using linear recursion
toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

-- #1b -- using linear recursion
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n <= 0 = []
  | otherwise = (n `mod` 10) : toDigitsRev (n `div` 10)

-- #2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther [x, y] = [ 2 * x, y ]
doubleEveryOther (x:y:xs)
  | length (x:y:xs) `mod` 2 == 0 = (2 * x) : y : doubleEveryOther xs
  | otherwise = x : doubleEveryOther (y:xs)

-- #3
sumDigits :: [Integer] -> Integer
sumDigits = undefined

-- #4
validate :: Integer -> Bool
validate = undefined

-- #5
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi = undefined

hanoi4 :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoi4 = undefined
