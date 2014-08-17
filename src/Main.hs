module Main where
import System.Random
import Control.Parallel (par,pseq)
{-
import GHC.TypeLits
import Numeric.LinearAlgebra.HMatrix as MAT
import Control.Parallel

newMat () =
    matrix 2 [1..9] * ident 2
-}

thrd (_,_,x,_) = x
frth (_,_,_,x) = x

makeRandomRow rng = do
    let ns = randoms rng :: [Int]
    take 2 ns

makeRandomMat rng = 
    [makeRandomRow rng, makeRandomRow rng]

cell11 a b = 
    (a!!0!!0 * b!!0!!0) + (a!!0!!1 * b!!1!!0)
cell12 a b = 
    (a!!0!!0 * b!!0!!1) + (a!!0!!1 * b!!1!!1)
cell21 a b = 
    (a!!1!!0 * b!!0!!0) + (a!!1!!1 * b!!1!!0)
cell22 a b = 
    (a!!1!!0 * b!!1!!0) + (a!!1!!1 * b!!1!!1)

multMatsNorm a b = 
    [[cell11 a b, cell12 a b],
     [cell21 a b, cell22 a b]]

multMatsPar a b = 
    x11 `par` x12 `par` x21 `par` x22 `pseq` [[x11,x12],[x21,x22]] where
        x11 =  cell11 a b
        x12 =  cell12 a b
        x21 =  cell21 a b
        x22 =  cell22 a b

main = do
    rng <- newStdGen
    let x = makeRandomMat rng
    let y = makeRandomMat rng
    let z = multMatsNorm x y
