#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Install package manager

# Checks
command gh >/dev/null || {
    echo "gh is not installed!"
    exit
}

[[ -d "$HOME/Library/Fonts" ]] || {
    echo "$HOME/Library/Fonts does not exist"
    exit
}

# Install custom fonts
gh repo clone microsoft/cascadia-code
gh repo clone JetBrains/JetBrainsMono

cp -r ./cascadia-code/source/vtt_data/* "$HOME/Library/Fonts"
cp -r ./JetBrainsMono/fonts/ttf/* "$HOME/Library/Fonts"

rm -rf ./cascadia-code
rm -rf ./JetBrainsMono


