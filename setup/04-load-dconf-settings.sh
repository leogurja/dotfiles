#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

dconf load /org/gnome/Ptyxis < $ROOT/setup/dconf/ptyxis.ini
dconf load /org/gnome/desktop < $ROOT/setup/dconf/desktop.ini
dconf load /org/gnome/mutter < $ROOT/setup/dconf/mutter.ini
dconf load /org/gnome/settings-daemon < $ROOT/setup/dconf/settings-daemon.ini
dconf load /org/gnome/shell < $ROOT/setup/dconf/shell.ini
dconf load /org/gnome/system < $ROOT/setup/dconf/system.ini
