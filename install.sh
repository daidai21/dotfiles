#!/bin/bash

# ================================================================================
# File Name: install.sh
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Sat May 25 14:54:22 2019
# ================================================================================


# backup old config file
mkdir ~/.old_dotfiles/
sudo mv .vimrc ~/.old_dotfiles/
sudo mv .bashrc ~/.old_dotfiles/
sudo mv .tmux.conf ~/.old_dotfiles/
sudo mv .bash_profile ~/.old_dotfiles/
sudo mv .zshrc ~/.old_dotfiles/


# install
if [[ `uname -a` =~ "Darwin" ]];
then
    echo "Mac OX"
    echo "TODO: have not coding this install script!"
elif [[ `uname -a` =~ "ubuntu" ]];
then
    echo "Ubuntu"
    sudo apt-get update
    # tool
    sudo apt-get install tree ssh rar unrar zip unzip openssh-server autojump zsh
    sudo apt-get install extundelete  # avoid error rm -rf
    sudo apt-get install htop  # sys moniter
    # CC
    sudo apt-get install ctags cmake gdb
    sudo apt-get install manpages manpages-dev \
                         manpages-de manpages-de-dev \
                         manpages-posix manpages-posix-dev \
                         manpages-zh glibc-doc  # manual
    sudo apt-get install libboost-dev  # boost
    # Py
    wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh;bash Anaconda3-2019.07-Linux-x86_64.sh  # anaconda3
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/  # change source
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/  # change source
    conda config --set show_channel_urls yes  # change source
    pip install -r requirements.txt
    mv ~/dotfiles/.pip/.pip.conf ~/.pip/.pip.conf
    # nodejs
    sudo apt-get install nodejs
    sudo apt-get isntall npm
    # zsh
    sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    zsh
    # tmux
    sudo apt-get install tmux
    rm -rf ~/.tmux.conf
    mv ~/dotfiles/.tmux.conf ~/.tmux.conf
    # vim
    sudo apt-get install vim
    rm -rf ~/.vim
    rm ~/.vimrc
    mv ~/dotfiles/.vimrc ~/.vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  # Vundle
    # TODO: docker
elif [[ `uname -a` =~ "centos" ]];
then
    echo "Centos"
    echo "TODO: have not coding this install script!"
else
    echo "ERROR: not find this OS version"
fi


# delete dotfiles
sudo rm -rf ~/dotfiles
echo "DaiDai' dotfiles install Completed!"
