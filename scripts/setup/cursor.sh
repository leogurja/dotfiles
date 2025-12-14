#!/bin/bash

root=$(git rev-parse --show-toplevel)


cursor --install-extension $(cat $root/packages/cursor-extensions.txt)
