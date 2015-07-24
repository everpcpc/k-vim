#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

system_shell=$SHELL
export SHELL="/bin/sh"

git checkout personal
git pull

vim -u $HOME/.vimrc.bundles +BundleInstall! +BundleClean +qall
export SHELL=$system_shell

echo "Update Done!"
