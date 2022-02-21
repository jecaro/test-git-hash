{-# LANGUAGE TemplateHaskell #-}

import Development.GitRev (gitHash)

main :: IO ()
main = do
  print ($(gitHash) :: String)
