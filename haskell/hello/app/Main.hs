module Main (main) where

import Lib
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
    TIO.putStrLn displayPrompt
    name <- TIO.getLine
    let output = greeting name
    TIO.putStrLn output
