#!/usr/bin/env bash

this_script_dir="$( cd "${BASH_SOURCE[0]%/*}" && pwd )"
hamlib="$1/include/hamlib"

if [ ! -d "$hamlib" ]; then
    echo "ERROR: First argument must be the path to a hamlib source tree!"
    exit 1
fi

# HSC File

cat > "$this_script_dir/../src/Bindings/Hamlib/Riglist.hsc" <<EOF
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- WARNING!!! This file is auto-generated. Generate it using:
-- scripts/generate-Riglist.sh

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
EOF
echo >> "$this_script_dir/../src/Bindings/Hamlib/Riglist.hsc"
grep -a define "$hamlib/riglist.h" \
  | sed 's/\/\*.*//g'                        \
  | grep -v '"'                              \
  | awk '{print $2}'                         \
  | sed 's/^/#num /'                         \
  | tail -n+5                                \
  | head -n-1                                \
  >> "$this_script_dir/../src/Bindings/Hamlib/Riglist.hsc"

echo >> "$this_script_dir/../src/Bindings/Hamlib/Riglist.hsc"

grep -a define "$hamlib/riglist.h" \
  | sed 's/\/\*.*//g'                        \
  | grep '"'                                 \
  | awk '{print $2}'                         \
  | sed 's/^/#globalarray /'                 \
  | sed 's/$/ , CChar/'                      \
  >> "$this_script_dir/../src/Bindings/Hamlib/Riglist.hsc"

# C File

cat > "$this_script_dir/../src/Bindings/Hamlib/Riglist.c" <<EOF
// WARNING!!! This file is auto-generated. Generate it using:
// scripts/generate-Riglist.sh

#include <hamlib/riglist.h>
#include <bindings.cmacros.h>

BC_INLINE2(RIG_MAKE_MODEL, int, int, int)
BC_INLINE1(RIG_BACKEND_NUM, int, int)
EOF

grep -a define "$hamlib/riglist.h" \
  | sed 's/\/\*.*//g'                        \
  | grep '"'                                 \
  | awk '{print $2}'                         \
  | sed 's/^/BC_GLOBALARRAY(/'               \
  | sed 's/$/, char)/'                       \
  >> "$this_script_dir/../src/Bindings/Hamlib/Riglist.c"
