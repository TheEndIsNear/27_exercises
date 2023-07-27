module Main (main) where

import Lib
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
    TIO.putStrLn prompt
    input <- TIO.getLine
    (TIO.putStrLn . outputString) input
