sudo apt-get install vim

cp aliases ~/.aliases.sh
cp shell_helpers ~/.shell_helpers
cat zshrc >> ~/.zshrc
cp vimrc ~/.vimrc
vim +PlugInstall +qall
