#!/bin/bash

ln -s $(pwd)/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.xinitrc ~/.xinitrc
ln -s $(pwd)/.Xresources ~/.Xresources

if [ ! -d ~/.vimrc ]; then
	mkdir -p ~/.vim;
	mkdir -p ~/.vim/autoload;
	mkdir -p ~/.vim/bundle;
fi

wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim  -P ~/.vim/autoload
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

