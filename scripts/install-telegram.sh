#/usr/bin/env bash

set -o errexit

INSTALL_PATH="$HOME/Telegram"
TEMP_PATH="$HOME/.tmp"

sudo apt-get install xz-utils

# Installing the application
rm -Rf $INSTALL_PATH
rm -Rf $TEMP_PATH
mkdir -p $TEMP_PATH
wget -O - "https://tdesktop.com/linux" | tar -xpJf - -C $TEMP_PATH
mv $TEMP_PATH/Telegram $INSTALL_PATH
rm -Rf $TEMP_PATH

nohup $INSTALL_PATH/Telegram > /dev/null 2>&1 &

exo-desktop-item-edit --create-new \
--type Application \
--name Telegram \
--command "$INSTALL_PATH/Telegram -- %u" \
--icon telegram \
$HOME/Desktop/ 2>&1 &
