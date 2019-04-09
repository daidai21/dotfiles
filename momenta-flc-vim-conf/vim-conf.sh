#########################################################################
# File Name: vim-conf.sh
# Author: lijun
# mail: lijun@momenta.ai
# Created Time: 2017年01月04日 星期三 11时37分56秒
#########################################################################
#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ~/

sed -i -e 's/gaoyu/'${USER}'/g' ~/.vimrc

vim +PluginInstall +qall
