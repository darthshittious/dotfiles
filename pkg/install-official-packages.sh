#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
    echo "must be run as root."
    exit 1
fi

echo "=====> downloading official packages"
echo
# requires sudo
# --noconfirm is used to select all packages from groups
pacman -Sy needed $(<packages-official.txt)

