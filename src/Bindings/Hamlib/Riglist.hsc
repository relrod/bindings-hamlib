{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <bindings.cmacros.h>
#include <hamlib/riglist.h>

module Bindings.Hamlib.Riglist where
import Foreign.Ptr
#strict_import

{- typedef int rig_model_t; -}
#synonym_t rig_model_t , CInt

#cinline RIG_MAKE_MODEL , CInt -> CInt -> CInt
#cinline RIG_BACKEND_NUM , CInt -> CInt
