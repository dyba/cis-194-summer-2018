module Homework.Week01.Assignment where

toDigitsAux :: Integer -> [Integer] -> [Integer]
toDigitsAux 0 xs = xs
toDigitsAux i [] = toDigitsAux (i `div` 10) [i `mod` 10]
toDigitsAux i xs = toDigitsAux (i `div` 10) ((i `mod` 10) : xs)

-- #1a
toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits i = toDigitsAux i []

-- #1b
toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n = (n `mod` 10) : toDigitsRev (n `div` 10)

-- #2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = undefined

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
