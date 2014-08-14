module Main where

import Foreign.C.Types
import Foreign.C.String
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable
import Bindings.Hamlib.Rig

main :: IO ()
main = do
  rig <- c'rig_init 204
  pokeArray (p'hamlib_port'pathname $ p'rig_state'rigport $ p'rig'state rig) (map castCharToCChar "/dev/ttyUSB0")
  res <- c'rig_open rig
  print res
  dptr <- malloc :: IO (Ptr CDouble)
  res' <- c'rig_get_freq rig 1 dptr
  print res'
  freq <- peek dptr
  putStrLn $ "CURRENT FREQUENCY: " ++ (show freq)
  return ()
