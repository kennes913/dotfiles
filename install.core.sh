# devsk.dotfiles.core
# This file is responsible for orchestrating system build.

set -o xtrace
set -o errexit

PACKAGES="$HOME/.dotfiles/packages"
SYSTEM="$HOME/.dotfiles/system"
RUNCOM="$HOME/.dotfiles/runcom"

# Install packages, customize configuration files
# and source relevant things 
bash $PACKAGES/install.packages.sh;

# Symlink to dotfiles.runcom.bash_profile
cd $HOME;
ln -s runcom/.bash_profile .bash_profile;

