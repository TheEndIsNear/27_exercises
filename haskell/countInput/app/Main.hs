{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import Lib

import qualified GI.Gtk as Gtk
import Data.GI.Base

main :: IO ()
main = do
    _ <- Gtk.init Nothing

    win <- new Gtk.Window [ #title := "introduction" ]
    _ <- on win #destroy Gtk.mainQuit
    _ <- #resize win 240 90

    box <- new Gtk.Box [ #orientation := Gtk.OrientationVertical]
    _ <- #add win box

    txtField <- new Gtk.Entry []
    _ <- #packStart box txtField False False 5

    msg <- new Gtk.Label []
    _ <- #packStart box msg True False 10

    #showAll win

    _ <- on txtField #activate $ do
        entryText <- Gtk.getEntryText txtField
        let text = outputString entryText
        Gtk.set msg [Gtk.labelLabel := text]

    Gtk.main
