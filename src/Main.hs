module Main where
import System.Environment
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix at LA

addd :: Int -> Int -> Int
addd x y = x + y

main :: IO ()
main = do
    addd 1 1
    putStrLn("done")
