-- Lab: Blackjack - part A
-- Authors: Clara Josefsson, Oskar Sturebrand, Valter Miari
-- Lab group: 59

module Blackjack where

import Cards
import RunGame
import Test.QuickCheck hiding (shuffle)


-- Task A1
hand2 :: Hand
hand2 = [Card (Numeric 2) Hearts, Card Jack Spades]

sizeSteps :: [Int]
sizeSteps = [ size hand2
            , size (Card (Numeric 2) Hearts : (Card Jack Spades : []))
            , 1 + size ((Card Jack Spades : []))
            , 1 + 1 + size []
            , 1 + 1 + 0 -- might not be nececcary
            , 2 ]


-- Definitions
-- Favorite card
aCard1 :: Card
aCard1 = Card Ace Spades

-- Another card
aCard2 :: Card
aCard2 = Card (Numeric 3) Diamonds

-- a Hand with two Cards, aCard1 and aCard2
aHand :: Hand
aHand = [Card (Numeric 7) Clubs, Card Queen Spades]


-- Task A2
display :: Hand -> String
-- \9829 == Hearts
-- \9824 == Spades
-- \9830 == Diamonds
-- \9827 == Clubs