{-# LANGUAGE OverloadedStrings #-}
module Lib (prompt, outputString) where

import qualified Data.Text as T

prompt :: T.Text
prompt =  "What is the input string? "

outputString :: T.Text -> T.Text
outputString input = T.concat [input
                              ," has "
                              ,(T.pack . show . T.length) input
                              ," characters."]
