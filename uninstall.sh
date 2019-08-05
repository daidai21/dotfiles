#!/bin/bash

# ================================================================================
# File Name: uninstall.sh
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Fri May 31 20:30:37 2019
# ================================================================================


# NOTE:


# delete
sudo rm -rf ~/.vim/
sudo rm ~/.vimrc
sudo rm ~/.tmux.conf
sudo rm ~/.bashrc
sudo rm ~/.bash_profile
sudo rm ~/.zshrc
# recovery pre dotfiles
mv ~.pre_dotfiles/* ~/

