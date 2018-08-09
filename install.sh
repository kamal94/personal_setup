# zsh is default installation but you can specify bash too
SHELL_OPTION=${1:-zsh} 
# basic package installaion
sudo apt-get install vim curl git 

#setup zsh
if [ "$SHELL_OPTIONl" = "zsh" ]; then
  sudo apt-get install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp zshrc  ~/.zshrc
fi

# alias, vim, and tmux setup
cp aliases ~/.aliases.sh
cp shell_helpers ~/.shell_helpers.sh
cp vimrc ~/.vimrc
vim +PlugInstall +qall
