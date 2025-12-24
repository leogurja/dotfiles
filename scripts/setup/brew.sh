#!/bin/bash

root=$(git rev-parse --show-toplevel)

# brew
brew install $(cat $root/packages/brew.txt)
