#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Build custom terminal

# Install oh-my-zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

command gh >/dev/null || {
    echo "gh is not installed!"
    exit
}

[[ -f "$HOME/.zshrc" ]] || {
    echo "$HOME/.zshrc does not exist"
    exit
}

# Theme
mkdir -p "$HOME/.zsh"
gh repo clone reobin/typewritten.git "$HOME/.zsh/typewritten"
cat <<EOF >"$HOME/.zshrc"
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten
EOF

# Color
gh repo clone junegunn/seoul256-iTerm2
mkdir -p "schemes"
cp -r seoul256-iterm2/*.itermcolors schemes/
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/tools/import-scheme.sh)" -v schemes/*
rm ./seoul256
rm ./schemes
