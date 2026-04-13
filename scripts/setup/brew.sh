#!/bin/bash

root=$(git rev-parse --show-toplevel)

if [ ! -d /home/linuxbrew/.linuxbrew ];
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
end

brew install $(cat $root/packages/brew.txt)
