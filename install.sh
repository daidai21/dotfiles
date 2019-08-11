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


if which apt-get > /dev/null; then  # Ubuntu
    # tool
    sudo apt-get install tree ssh rar unrar zip unzip openssh-server autojump zsh
    sudo apt-get install extundelete  # avoid error rm -rf
    # CC
    sudo apt-get install ctags cmake gdb
    sudo apt-get install manpages manpages-dev \
                         manpages-de manpages-de-dev \
                         manpages-posix manpages-posix-dev \
                         manpages-zh glibc-doc  # manual
    sudo apt-get install libboost-dev  # boost
    # Py
    conda install flake8 yapf pylint mypy
    pip install -r requirements.txt
    # nodejs
    sudo apt-get install nodejs
    sudo apt-get isntall npm
    # zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
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
elif which yum > /dev/null; then  # Centos
    # TODO
elif which brew > /dev/null; then  # Mac
    # TODO
fi


# delete dotfiles
sudo rm -rf ~/dotfiles
echo "DaiDai' dotfiles install Completed!"
