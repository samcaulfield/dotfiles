#!/bin/bash

#
# Install packages
#

# More advanced auto-completion for Bash.
sudo apt install bash-completion

# A visual diff tool.
sudo apt install meld

# An advanced pager that supports colours.
sudo apt install most

# A wrapper that provides a single interface to multiple unpacking tools.
sudo apt install unp

# A text-mode interface for Git.
sudo apt install tig

# A syntax highlighter for Git diffs.
wget https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb
sudo dpkg -i git-delta_0.12.1_amd64.deb

#
# Configure Bash
#

ln -s $(pwd)/.bashrc $HOME/.bashrc
echo "export PATH=$(pwd)/scripts:$HOME/.local/bin:$(pwd):\"$PATH\"" >> $HOME/.bashrc

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
# Configure Visual Studio Code
#

mkdir -p $HOME/.config/Code/User
ln -s $(pwd)/vscode/settings.json $HOME/.config/Code/User/settings.json

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
