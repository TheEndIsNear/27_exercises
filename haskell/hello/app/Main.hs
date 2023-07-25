module Main (main) where

import Lib

main :: IO ()
main = do
    putStrLn displayPrompt
    name <- getLine
    let output = greeting name
    print output
