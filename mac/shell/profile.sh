#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Source custom dot files

LOADERS="$HOME/.dotfiles/runtime"

# Source Shell Files
for file in "$LOADERS"/*.sh; do
  source "$file"
done


# Python Versions and Environment
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
pyenv activate development.sk


