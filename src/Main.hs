module Main where
{-
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix as MAT
import Control.Parallel

newMat () =
    matrix 2 [1..9] * ident 2
-}

matMult m1 m2 = 
    m1

main :: IO ()
main = do        
    let x = [[1,0,0],
             [0,1,0],
             [0,0,1]]

    putStrLn (show $x!!0!!0)
