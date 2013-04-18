module Main where

import Test.DocTest

main :: IO ()
main = doctest ["Data/Time/Pretty.hs"]
