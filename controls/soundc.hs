{-# LANGUAGE OverloadedStrings #-}
module Main where

import System.Environment
import qualified Data.ByteString.Lazy as BL
import Data.ByteString.Lazy.Char8 (pack, unpack)

data Direction = Up | Down | Invalid
instance Read Direction where
  readsPrec _ sym = [(dir,"")]
    where dir = case sym of
           "+" -> Up
           "-" -> Down
           _   -> Invalid

adjust :: Direction -> Int -> IO String
adjust dir amnt = return (show amnt)

getDevice :: IO String
getDevice = unpack <$> BL.readFile ".sound_device"

setDevice :: String -> IO String
setDevice devtype = do
  BL.writeFile ".sound_device" $ pack devtype
  return devtype

consume :: [String] -> IO ()
consume ["device"] = do
  device <- getDevice
  putStrLn $ "device: " ++ device
consume ["device", devtype] = do 
  new <- setDevice devtype
  putStrLn $ "device set to " ++ new
consume ["adjust", dir, amount] = do
  vol <- adjust (read dir) (read amount)
  putStrLn $ "Volume: " ++ vol
consume _ = putStrLn "invalid arguments"

main = do
  putStrLn "Sound Controller v0.2.4"
  args <- getArgs
  consume args
