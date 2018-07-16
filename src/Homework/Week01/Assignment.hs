module Homework.Week01.Assignment where

import GHC.Show
import Data.Char

-- #1a
toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits i = map toInteger (map digitToInt (show (fromInteger i)))

-- #1b
toDigitsRev :: Integer -> [Integer]
toDigitsRev = undefined

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
