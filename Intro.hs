{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant lambda" #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
{-# HLINT ignore "Avoid lambda" #-}
{-# HLINT ignore "Use lambda" #-}
x = 5

f = \x -> x + 1

y = f x

-- Type inference, which is not available in C++
-- What is the difference between Integer and Int?

-- What is the difference between int in c++ and an integer value in python?
-- C++ int has a fixed size but python Integer can grow
-- Similarly in Haskell Int type has fixed size while Integer can grow arbitrarily

-- print1ToN 10 = "1 2 3 .. 10"
print1ToN :: Int -> String
print1ToN = undefined

sum1ToN :: Int -> Int
sum1ToN 1 = 1
sum1ToN n
    | n < 1 = error "n should be greater than 0"
    | otherwise = n + sum1ToN (n-1)

add :: Int -> Int -> Int
add x y = x + y

add1 :: Int -> Int -> Int
add1 x = \y -> x + y

add2 :: Int -> Int -> Int
add2 = \x y -> x + y


data Person = P String Int -- Product type, It is essentially a cartesian products (String * Int)
    deriving (Show)
-- Person is called the Type name
-- P is called the Constructor (Data constructor)

-- name :: Person -> String
-- name (P name age) = name

-- name1 :: Person -> String
-- name1 = \(P name age) -> name

-- name2 :: Person -> String
-- name2 = \p -> case p of
--     P name age -> name

-- age :: Person -> Int
-- age (P name age) = age

data PersonRecord = PR {name :: String, age :: Int} -- Record types
-- Record types are also Product types but we have additional functions given to us
-- by the compiler

-- Sum types
data Expr = 
    Add Int Int |
    Mul Int Int |
    Sub Int Int |
    Div Int Int

-- You see an example of pattern matching
evaluate :: Expr -> Int
evaluate (Add x y) = x + y
evaluate (Sub x y) = x - y
evaluate (Mul x y) = x * y
evaluate (Div x y) = div x y