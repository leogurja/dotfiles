#!/bin/bash

root=$(git rev-parse --show-toplevel)

for script in $(ls $root/scripts/dump); do
  $root/scripts/dump/$script
done
