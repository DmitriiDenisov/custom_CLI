filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

# 1. Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# 2. Install ZSH
brew install zsh

# take path to zsh
which zsh
chsh -s /usr/local/bin/zsh

# Install Oh My ZSH:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
