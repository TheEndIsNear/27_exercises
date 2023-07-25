module Lib
    ( displayPrompt,
      greeting
    ) where

displayPrompt :: String
displayPrompt = "What is your name?"

greeting :: String -> String
greeting name = mconcat [ "Hello, ", name, ", nice to meet you!" ]
