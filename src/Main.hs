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

main :: IO ()
main = do        
    rng <- newStdGen
    let x = makeRandomMat rng
    putStrLn (show x)
