module Main where

import Repl (runRepl)

-- main :: IO ()
-- main = do
--   args <- getArgs
--   case args of
--     [fileName] -> do
--       source <- readFile fileName
--       case run source of
--         Right result -> print result
--         Left  err    -> putStrLn $ "Error: " ++ err
--     badArgs   -> putStrLn $ "Wrong number of arguments: " ++ show (length badArgs)

main :: IO ()
main = do
  putStrLn "Welcome to the LET language!"
  runRepl
