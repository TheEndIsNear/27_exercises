module Lib
    ( displayPrompt,
      greeting
    ) where

displayPrompt :: String
displayPrompt = "What is your name?"

greeting :: String -> String
greeting "Matt" = "Hello! Matt We have the same name!"
greeting name = mconcat [ "Hello, ", name, ", nice to meet you!" ]
