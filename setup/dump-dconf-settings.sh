#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

dconf dump /org/gnome/Ptyxis/ > $ROOT/setup/dconf/ptyxis.ini
dconf dump /org/gnome/desktop/ > $ROOT/setup/dconf/desktop.ini
dconf dump /org/gnome/mutter/ > $ROOT/setup/dconf/mutter.ini
dconf dump /org/gnome/settings-daemon/ > $ROOT/setup/dconf/settings-daemon.ini
dconf dump /org/gnome/shell/ > $ROOT/setup/dconf/shell.ini
dconf dump /org/gnome/system/ > $ROOT/setup/dconf/system.ini
