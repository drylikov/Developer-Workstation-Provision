#/usr/bin/env bash

set -o errexit

NODE_VERSION="v6"

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | bash
. $HOME/.nvm/nvm.sh

cd "$NVM_DIR" && git pull origin master && git checkout `git describe --abbrev=0 --tags`
. $HOME/.nvm/nvm.sh

nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
