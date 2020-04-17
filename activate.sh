filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

# 1. Install git
sudo apt install git

# 2. Install ZSH
sudo apt install zsh

# 3. Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# you need to exit after installation from child shell created

# install Oh My ZSH
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 4. Install ZSH-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 5. Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# VIM
# 6. Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# 8. Install Plugins
vim +PluginInstall +qall


# Copy files
cp -rf .vimrc ~/.vimrc
cp -rf .zshrc ~/.zshrc

# initialize Vim plugins
vim +PluginInstall +qall

echo $'\360\237\215\251' " [DONE]"
cd ~
