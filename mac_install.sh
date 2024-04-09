# zsh is default installation but you can specify bash too
SHELL_OPTION=${1:-zsh} 
# basic package installaion
brew install vim curl git cmake ack tmux

#setup zsh
if [ "$SHELL_OPTION" == "zsh" ]; then
  echo "installign zsh"
  brew install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  cp zshrc  ~/.zshrc
fi

# alias, vim, and tmux setup
pip3 install pylint
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp aliases ~/.aliases.sh
cp shell_helpers ~/.shell_helpers.sh
cp vimrc ~/.vimrc
cp custom-wezm.zsh-theme ~/.oh-my-zsh/themes
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py
