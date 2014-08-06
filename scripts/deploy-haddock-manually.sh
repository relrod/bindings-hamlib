#!/usr/bin/env bash

cwd="$( cd "${BASH_SOURCE[0]%/*}" && pwd )"
cd "$cwd/.."
cabal haddock
f=`mktemp -d`
git clone git@github.com:CodeBlock/hamlib-haskell.git "$f/hamlib-haskell.git"
pushd "$f/hamlib-haskell.git"
  git checkout gh-pages
  git rm -rf docs
popd
mv dist/doc/html/hamlib/* "$f/hamlib-haskell.git/"
pushd "$f/hamlib-haskell.git"
  git add -A
  git commit -m "Manual docs deploy."
  git push origin gh-pages
popd
rm -rf "$f"

if [ $? == 0 ]; then
  echo "*** Done: http://CodeBlock.github.io/hamlib-haskell/docs/"
  exit 0
else
  echo "*** ERROR!!! Fix the above and try again."
  exit 1
fi
