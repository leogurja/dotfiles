#!/bin/bash

fish_config="$HOME/.config/fish"
if [ -d "$fish_config" ]; then
  chezmoi add "$fish_config"
fi
