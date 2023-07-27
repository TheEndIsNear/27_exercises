{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( displayPrompt,
      greeting
    ) where

import qualified Data.Text as T

displayPrompt :: T.Text
displayPrompt = "What is your name?"

greeting :: T.Text -> T.Text
greeting "Matt" = "Hello! Matt We have the same name!"
greeting name = mconcat [ "Hello, ", name, ", nice to meet you!" ]
