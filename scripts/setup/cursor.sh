#!/bin/bash

root=$(git rev-parse --show-toplevel)

extensions=$(cat $root/packages/cursor-extensions.txt)

for extension in $extensions; do
  cursor --install-extension $extension
done
