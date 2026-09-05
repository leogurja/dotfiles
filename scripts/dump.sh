#!/bin/bash

root=$(git rev-parse --show-toplevel)

for script in "$root/scripts/dump"/*; do
  # shellcheck source=/dev/null
  . "$script"
done
