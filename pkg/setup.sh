#!/bin/bash

# No root
if [[ "$EUID" -eq 0 ]]; then
    echo "do not run as root."
    exit 1
fi

if [ ! -d "$HOME/.config" ]; then
    mkdir -p "$HOME/.config"
fi

if [ ! -d "$HOME/.ssh" ]; then
    mkdir -p "$HOME/.ssh"
fi

cp -r .config/* $HOME/.config/
cp -r .ssh/* $HOME/.ssh/
cp {.bashrc,.bash_aliases,.gitconfig} $HOME/

