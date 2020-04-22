#!/bin/bash

#
# Configure Bash
#

echo "export PATH=$HOME/dotfiles:$PATH" >> $HOME/.bashrc

#
# Configure Git
#

ln -s $(pwd)/.gitconfig $HOME/.gitconfig

#
# Configure Vim
#

ln -s $(pwd)/.vimrc $HOME/.vimrc

VIM_PACKAGES_DIR=$HOME/.vim/pack/sc/start
mkdir -p $VIM_PACKAGES_DIR

git clone https://github.com/airblade/vim-gitgutter.git $VIM_PACKAGES_DIR/vim-gitgutter

git clone https://github.com/preservim/nerdtree.git $VIM_PACKAGES_DIR/nerdtree
( cd $VIM_PACKAGES_DIR/nerdtree && git checkout 6.7.7 )

#
# Configure X
#

ln -s $(pwd)/.xinitrc ~/.xinitrc
ln -s $(pwd)/.Xresources ~/.Xresources

#
# Configure everything else
#

[ ! -d ~/.config ] && mkdir ~/.config
ln -s $(pwd)/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s $(pwd)/newl.bash ~/newl
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/awesome ~/.config/awesome
