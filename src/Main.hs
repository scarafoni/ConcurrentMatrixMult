module Main where
import System.Environment

main :: IO ()
main = do
    arr <- array (1,100) [(i, i*i) | i <- [1..100]]
    putStrLn("done")

