#!/bin/bash

# This script adds a configuration file or folder to the repository.
# Usage: ./add_config.sh <config_path>

root=$(git rev-parse --show-toplevel)
home="$root/home"
config_path="$1"

# Ensure the script is run with a parameter
if [ -z "$1" ]; then
  echo "Usage: $0 <config_path>"
  exit 1
fi

# Check if the provided path exists
if [ ! -e "$config_path" ]; then
  echo "Error: The specified path '$config_path' does not exist."
  exit 1
fi

outfile="$home/$(echo $config_path | sed \"s|$HOME/||g\" | sed 's|/|__|g')"
if [ -e "$outfile" ]; then
  echo "Error: The file '$outfile' already exists in the repository."
  exit 1
fi

mv $config_path $outfile
ln -sf $outfile $config_path
echo "$outfile -> $config_path"

git add $outfile
git commit -m "Added configuration file: $outfile"
