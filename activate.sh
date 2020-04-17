filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

# install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# you need to exit after installation from child shell created

# install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy files
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc

# initialize Vim plugins
vim +PluginInstall +qall



cd ~
echo "setting up personal .zshrc ..."
ln -si "$working_dir/$folder/zshrc" .oh-my-zsh/custom/common.zsh
echo $'\360\237\215\251' " [DONE]"
cd -
