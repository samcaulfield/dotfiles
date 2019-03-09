#!/bin/bash

ln -s $(pwd)/newl.sh ~/newl
[ ! -d ~/.config ] && mkdir ~/.config
ln -s $(pwd)/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.xinitrc ~/.xinitrc
ln -s $(pwd)/.Xresources ~/.Xresources
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

mkdir -p ~/.vim/autoload;
mkdir -p ~/.vim/bundle;

wget -nc https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim  -P ~/.vim/autoload
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
( cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py --clang-completer )

echo "[flake8]
max-line-length = 200" > ~/.config/flake8

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

