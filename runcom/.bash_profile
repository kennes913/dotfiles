# dotfiles.runcom.bash_profile
DOT_FILES_DIRECTORY="$HOME/.dotfiles"
SYSTEM_DIRECTORY="$HOME/.dotfiles/system"

# Source System Files
for DOTFILE in $SYSTEM_DIRECTORY/.[^.]*;
do
  source $DOTFILE
done

# Ruby Versions
source $HOME/.dotfiles/packages/rvm/scripts/rvm

# Python Versions and Environment
if command -v pyenv 1>/dev/null 2>&1; then
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
pyenv activate development.sk;
