echo "DaiDai, Dotfiles!"
echo "Support only Ubuntu/Centos/Mac, Sorry!"


# switch to install directory
cd ~


# install ctags
if which apt-get > /dev/null; then
    sudo apt-get install ctags
elif which yum > /dev/null; then
    sudo yum install ctags
elif which brew > /dev/null; then
    brew install ctags
fi


# ctags 软连接
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags


# C++ 相关
sudo yum install cmake


# install vim
if which apt-get > /dev/null; then
    sudo apt-get install vim
elif which yum > /dev/null; then
    sudo yum install vim
elif which brew > /dev/null; then
    brew install vim
fi


# install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


# install tmux
if which apt-get > /dev/null; then
    sudo apt-get install tmux
elif which yum > /dev/null; then
    sudo yum install tmux
elif which yum > /dev/null; then
    brew install tmux
else
    echo "Support only Ubuntu/Centos/Mac, Sorry!"
fi


# install zsh
if which apt-get > /dev/null; then
    sudo apt-get install zsh
elif which yum > /dev/null; then
    sudo yum install zsh
elif which brew > /dev/null; then
    brew install zsh
else
    echo "Support onlyy Ubuntu/Centos/Mac, Sorry!"
fi


# install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# Python 相关

sudo pip install flake8 yapf
