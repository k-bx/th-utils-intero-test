{-# LANGUAGE TemplateHaskell #-}

module Main
  ( main
  ) where

import Data.String.Class (toString)
import Text.Blaze.Html.Renderer.Text (renderHtml)
import Text.Hamlet
import qualified Data.Text.Lazy as TL

main :: IO ()
main = do
  let html = $(shamletFile "data/foo.hamlet")
  putStrLn (toString (renderHtml html :: TL.Text))
