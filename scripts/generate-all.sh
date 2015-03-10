#!/usr/bin/env bash

this_script_dir="$( cd "${BASH_SOURCE[0]%/*}" && pwd )"
hamlib="$1/include/hamlib"

if [ ! -d "$hamlib" ]; then
    echo "ERROR: First argument must be the path to a hamlib source tree!"
    exit 1
fi

for file in $(ls $this_script_dir/generate*.sh | grep -v generate-all); do
    echo "Running $file"
    "$file" "$hamlib/../.."
done
