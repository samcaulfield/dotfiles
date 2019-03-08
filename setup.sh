#!/bin/bash

ln -s $(pwd)/newl.sh ~/newl
[ ! -d ~/.config ] && mkdir ~/.config
ln -s $(pwd)/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.xinitrc ~/.xinitrc
ln -s $(pwd)/.Xresources ~/.Xresources
ln -s $(pwd)/.gitconfig ~/.gitconfig

if [ ! -d ~/.vimrc ]; then
	mkdir -p ~/.vim;
	mkdir -p ~/.vim/autoload;
	mkdir -p ~/.vim/bundle;
fi

wget -nc https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim  -P ~/.vim/autoload
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8

if [ ! -d ~/.config ]; then
	mkdir ~/.config;
fi

echo "[flake8]
max-line-length = 200" > ~/.config/flake8

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

