module Communication.Hamlib.RigList where

import Foreign.Ptr
import Foreign.C.Types

#include <hamlib/riglist.h>

{#enum define Consts {
    RIG_YAESU as RigYaesu
  } deriving (Eq, Ord, Show)#}

--rigYaesu :: Int
--rigYaesu = fromEnum RigYaesu
