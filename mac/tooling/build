#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Install package manager

DOT_FILES_DIRECTORY="$HOME/.dotfiles"

# Checks
command curl >/dev/null || {
    echo "curl is not installed!"
    exit
}

# Install Homebrew
# To uninstall, run:
#  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Tooling
cd "$DOT_FILES_DIRECTORY"/mac/packages || exit
brew update
brew cleanup
brew bundle
