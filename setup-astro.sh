#!/bin/bash

sudo dnf copr enable atim/lazygit -y
sudo dnf install -y lazygit bottom ripgrep neovim cargo go
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
