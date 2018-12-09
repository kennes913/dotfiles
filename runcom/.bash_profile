# dotfiles.runcom.bash_profilex
echo "         ______________"
echo "        /             /|"
echo "       /             / |"
echo "      /____________ /  |"
echo "     | ___________ |   |"
echo "     ||           ||   |"
echo "     ||           ||   |"
echo "     ||[devsk]$...||   |"
echo "     ||___________||   |"
echo "     |   _______   |  /"
echo "    /|  (_______)  | /"
echo "   ( |_____________|/"
echo "    \\"
echo ".=======================."
echo "| ::::::::::::::::  ::: |"
echo "| ::::::::::::::[]  ::: |"
echo "|   -----------     ::: |"
echo "'-----------------------'"


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
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
pyenv activate development.sk;
