# basic package installaion
sudo apt-get install vim curl git zsh

#setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# alias, vim, and tmux setup
cp aliases ~/.aliases.sh
cp shell_helpers ~/.shell_helpers.sh
cp zshrc  ~/.zshrc
cp vimrc ~/.vimrc
vim +PlugInstall +qall
