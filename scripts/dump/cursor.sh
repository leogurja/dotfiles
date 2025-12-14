#!/bin/bash

root=$(git rev-parse --show-toplevel)

cursor --list-extensions > $root/packages/cursor-extensions.txt
