{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

import Development.GitRev (gitHash)

main :: IO ()
main = putStrLn $(gitHash)
