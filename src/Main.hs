{-# LANGUAGE TemplateHaskell #-}

module Main where

import Data.String.Class (toString)
import Text.Blaze.Html.Renderer.Text (renderHtml)
import Text.Hamlet
import Text.Julius
import Text.Shakespeare
import Utils
import qualified Data.Text.Lazy as TL

main :: IO ()
main = do
  let html = $(shamletFileRelative "data/foo.hamlet")
  putStrLn (toString (renderHtml html :: TL.Text))
