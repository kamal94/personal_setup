# zsh is default installation but you can specify bash too
SHELL_OPTION=${1:-zsh} 
# basic package installaion
sudo apt-get install vim curl git ack-grep tmux python3-pip

#setup zsh
echo "shell option:"
echo $SHELL_OPTION
echo "$SHELL_OPTION"
if [ "$SHELL_OPTION" == "zsh" ]; then
  echo "shell option:"
  echo $SHELL_OPTION
  sudo apt-get install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp zshrc  ~/.zshrc
fi

# alias, vim, and tmux setup
pip3 install pylint
cp aliases ~/.aliases.sh
source ~/.aliases.sh
cp shell_helpers ~/.shell_helpers.sh
source ~/.shell_helpers.sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall
