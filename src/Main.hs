module Main where
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix as MAT

newMat () =
    matrix 3 [1..9] * ident 3

main :: IO ()
main = do
    let x = newMat ()
    putStrLn (show x)
