#devsk.dotfiles.packages 

DOT_FILES_DIRECTORY="$HOME/.dotfiles"

# Build Homebrew
# If you have nothing else in /usr/local, to uninstall, run:
#  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)";
#  sudo rm -rf /usr/local/*
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Build RVM -- 
# This will install some dependencies through Homebrew in /usr/local/bin:
#  autoconf 
#  automake
#  libtool 
#  pkg-confiig 
#  coreutils 
#  libyaml 
#  readline 
#  libksba 
#  openssl@1.1
# To uninstall, run:
#  rvm implode or rm -rf $DOT_FILES_DIRECTORY/packages/rvm
curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles --path $DOT_FILES_DIRECTORY/packages/rvm;
source $DOT_FILES_DIRECTORY/runcom/.bash_profile
rvm get stable
rvm use ruby --install --default

# Use latest version of curl
brew install curl
export HOMEBREW_FORCE_BREWED_CURL=1

# Install dependencies
cd $DOT_FILES_DIRECTORY/packages
brew update
brew cleanup
brew bundle 

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s $DOT_FILES_DIRECTORY/packages/oh.my.zsh/.zshrc $HOME/.zshrc;
