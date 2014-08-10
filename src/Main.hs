module Main where
import System.Environment
import Data.Array.IO

main :: IO ()
main = do
    args <- getArgs
    arr <- newArray (1,10) 37
    putStrLn("now to print the array"++newArray)
    putStrLn("Hello, "++ args !! ))

