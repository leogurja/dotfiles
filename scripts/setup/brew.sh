#!/bin/bash

root=$(git rev-parse --show-toplevel)

if [ ! -d /home/linuxbrew/.linuxbrew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# shellcheck disable=SC2046
brew install $(cat "$root/packages/brew.txt")
