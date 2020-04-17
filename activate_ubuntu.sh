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

# Install VIM
sudo apt-get update
sudo apt-get install vim

# 6. Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy files
cp -rf .vimrc ~/.vimrc
cp -rf .zshrc ~/.zshrc

# 9. Special for Plugin YouCompleteMe
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py 
python3 -m pip install setuptools 
sudo apt install build-essential cmake vim python3-dev 

# initialize Vim plugins
vim +PluginInstall +qall

# Again for YouCompleteMe:
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all 
sudo apt install vim-gtk

echo $'\360\237\215\251' " [DONE]"
cd ~
