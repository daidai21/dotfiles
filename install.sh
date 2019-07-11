#!/bin/bash

# ================================================================================
# File Name: install.sh
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Sat May 25 14:54:22 2019
# ================================================================================


# NOTE:


# mv old dotfiles
mkdir ~/.old_dotfiles/
sudo mv .vimrc ~/.old_dotfiles/
sudo mv .bashrc ~/.old_dotfiles/
sudo mv .tmux.conf ~/.old_dotfiles/
sudo mv .bash_profile ~/.old_dotfiles/
sudo mv .zshrc ~/.old_dotfiles/


# ========== Linux library ==========

sudo apt-get install tree
sudo apt-get install ssh
sudo apt-get install rar unrar
sudo apt-get install zip unzip
sudo apt-get install openssh-server
sudo apt-get install autojump

# eigen
sudo apt-get install libeigen3-dev


# ========== Tools ==========

# Docker




# ========== Language ==========

sudo apt-get install ctags build-essential cmake python-dev python3-dev  # vim Plugin rely on

# g++

# Cmake
sudo apt-get install cmake
# clang

# python
sudo apt-get install mypy  # mypy

# ========== zsh ==========

# Install Zsh
sudo apt-get install zsh
# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# start-up oh-my-zsh
zsh

# ========== tmux ==========

# Install tmux
sudo apt-get install tmux
# setting tmux
rm -rf ~/.tmux.conf
mv ~/dotfiles/.tmux.conf ~/.tmux.conf

# ========== vim ==========

# mv .vimrc file
rm -rf ~/.vim
rm ~/.vimrc
mv ~/dotfiles/.vimrc ~/.vimrc
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Plugin Install
echo "Plugin Install Start"
vim tmp -c "BundleInstall" -c "q" -c "q"
rm tmp
~/.vim/bundle/YouCompleteMe/install.py --clang-completer  # Install YouCompleteMe
echo "Plugin Install Completed!"

# delete dotfiles
sudo rm -r dotfiles

echo "DaiDai' dotfiles install Completed!"
