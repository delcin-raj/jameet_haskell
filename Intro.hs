{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant lambda" #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
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