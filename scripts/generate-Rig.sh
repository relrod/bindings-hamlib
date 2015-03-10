#!/usr/bin/env bash

this_script_dir="$( cd "${BASH_SOURCE[0]%/*}" && pwd )"
hamlib="$1/include/hamlib"

if [ ! -d "$hamlib" ]; then
    echo "ERROR: First argument must be the path to a hamlib source tree!"
    exit 1
fi

# HSC File

cat > "$this_script_dir/../src/Bindings/Hamlib/Rig.hsc" <<EOF
-- WARNING!!! This file is auto-generated. Generate it using:
-- scripts/generate-Rig.sh
EOF

c2hsc "$hamlib/rig.h" --prefix Bindings.Hamlib -s \
      >> "$this_script_dir/../src/Bindings/Hamlib/Rig.hsc"
