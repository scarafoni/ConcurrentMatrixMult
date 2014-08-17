module Main where
import System.Random
{-
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix as MAT
import Control.Parallel

newMat () =
    matrix 2 [1..9] * ident 2
-}
makeRandomRow rng = do
    let ns = randoms rng :: [Int]
    take 2 ns

makeRandomMat rng = 
    [makeRandomRow rng, makeRandomRow rng]

multMatsNorm a b = 
    [[(a!!0!!0 * b!!0!!0) + (a!!0!!1 * b!!1!!0), (a!!0!!0 * b!!0!!1) + (a!!0!!1 * b!!1!!1)],
    [(a!!1!!0 * b!!0!!0) + (a!!1!!1 * b!!1!!0), (a!!1!!0 * b!!1!!0) + (a!!1!!1 * b!!1!!1)]]
    

multMatsPar= 
    2

main :: IO ()
main = do        
    rng <- newStdGen
    let x = makeRandomMat rng
    let y = makeRandomMat rng
    let xy = multMatsNorm x y
    putStrLn (show xy)
