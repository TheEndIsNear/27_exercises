module Lib (prompt, outputString) where

import qualified Data.Text as T

prompt :: T.Text
prompt = T.pack "What is the input string? "

outputString :: T.Text -> T.Text
outputString input = T.concat [input
                              ,T.pack " has "
                              ,T.pack $ show $ T.length input
                              ,T.pack " characters."]
