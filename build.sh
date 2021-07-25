#!/usr/bin/env bash

set -o xtrace
set -o errexit

case "$(uname -s)" in 
    Darwin)
        PACKAGES="$HOME/.dotfiles/mac/packages"
        SYSTEM="$HOME/.dotfiles/mac/system"
    ;;
    Linux)
        PACKAGES="$HOME/.dotfiles/linux/packages"
        SYSTEM="$HOME/.dotfiles/linux/system"
    ;;
    *)
        echo "OS not compatible with this script"
        exit
    ;;
esac





# Install packages, customize configuration files
# and source relevant things 
bash $PACKAGES/build.sh;

# Symlink to dotfiles.runcom.bash_profile
cd $HOME;


