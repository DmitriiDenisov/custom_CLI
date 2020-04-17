filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

# 1. Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# 2. Install ZSH
brew install zsh

# take path to zsh
chsh -s /bin/zsh

# Install Oh My ZSH:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 4. Install ZSH-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 5. Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 6. Install vim
brew install vim

# 7. Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 8. Copy files
cp -rf .vimrc ~/.vimrc
cp -rf .zshrc ~/.zshrc

# initialize Vim plugins
vim +PluginInstall +qall

# For Plugin YouCorrectMe
brew install cmake macvim python
brew install mono go nodejs

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

# If error with vim in Python
brew install macvim
alias vim='mvim -v'

