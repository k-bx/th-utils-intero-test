module Utils where

import Language.Haskell.TH
import TH.RelativePaths
import Text.Hamlet
import Text.Julius
import Text.Shakespeare

shamletFileRelative :: FilePath -> Q Exp
shamletFileRelative path = do
    str <- qReadFileString path
    hamletFromString htmlRules defaultHamletSettings str
