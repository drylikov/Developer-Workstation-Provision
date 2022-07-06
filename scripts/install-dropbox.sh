#/usr/bin/env bash

# https://www.dropbox.com/install?os=lnx#linux-install-content

cd ~/
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
mkdir ~/Dropbox
