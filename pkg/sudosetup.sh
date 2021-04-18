#! /bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "You must be root to run this."
    exit 1
fi

# Configure vi and vim to use neovim
ln -s /usr/bin/nvim /usr/bin/vim
ln -s /usr/vin/nvim /usr/bin/vi

cp -r ./usr/bin/* /usr/bin/

# Enable desktop stuffs
systemctl enable lightdm
systemctl enable NetworkManager
