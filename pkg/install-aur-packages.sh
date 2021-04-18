#!/bin/bash

echo
echo "installing AUR packages"
echo

# Create a directory for the git repos
# Temp dirs sometimes run out of space for some reason
if [ ! -d "$HOME/aur-packages" ]; then
    mkdir -p "$HOME/aur-packages"
fi

TEMP_DIR="$HOME/aur-packages"
CURRENT_DIR=$(pwd)

# Load extra keys
# spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -

while read AUR_PKG
do
    if ! pacman -Q ${AUR_PKG} > /dev/null; then
	cd $TEMP_DIR
	git clone https://aur.archlinux.org/${AUR_PKG}.git
	cd ${AUR_PKG} && makepkg -si --noconfirm && cd {TEMP_DIR}
    fi
done < packages-aur.txt

