#!/bin/bash

root=$(git rev-parse --show-toplevel)


for extension in $(cat $root/packages/cursor-extensions.txt); do
    cursor --install-extension $extension
done
