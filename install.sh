#!/bin/bash


# backup old config file
mkdir ~/.old_dotfiles/
sudo mv .vimrc ~/.old_dotfiles/
sudo mv .bashrc ~/.old_dotfiles/
sudo mv .tmux.conf ~/.old_dotfiles/
sudo mv .bash_profile ~/.old_dotfiles/
sudo mv .zshrc ~/.old_dotfiles/
cd ~


# install
if [[ `uname -a` =~ "Darwin" ]];
then
    echo "Mac OX"
    # install brew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # TODO: install tool, C++
    brew install tree ssh rar unrar zip unzip openssh-server zsh tmux vim
    brew install supervisor
    # C++
    brew install g++ gcc clange
    brew install cmake libboost-dev
elif [[ `uname -a` =~ "ubuntu" ]];
then
    echo "Ubuntu"
    sudo apt-get update
    # tool
    sudo apt-get install tree ssh rar unrar zip unzip openssh-server zsh tmux vim
    sudo apt-get install extundelete  # avoid error rm -rf
    sudo apt-get install htop         # sys moniter
    sudo apt-get install git-extras   # git command extension tool
    sudo apt-get install sshfs        # mount remote directions
    sudo apt-get install supervisor   # process manager tool
    sudo apt-get install sysstat
    sudo apt-get install pstack
    sudo apt-get install numactl
    # C++
    sudo apt-get install g++ gcc clange
    sudo apt-get install ctags cmake gdb libboost-dev
    sudo apt-get install manpages manpages-dev manpages-de manpages-de-dev manpages-posix manpages-posix-dev manpages-zh glibc-doc  # manual
fi
# Python
pip install supervisor flake8 yapf pipreqs
# oh-my-zsh
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# mv config file
mv ~/dotfiles/.tmux.conf ~/
mv ~/dotfiles/.vimrc     ~/
mv ~/dotfiles/.gitconfig ~/


# delete dotfiles
sudo rm -rf ~/dotfiles
echo "DaiDai' dotfiles install Completed!"

