module Main where
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix as MAT

add :: Int -> Int -> Int
add x y = 
    x + y

main :: IO ()
main = do
    let z = add 1 1
    putStrLn $show z
