## vim config script automatically

### to run the script

	bash vim-conf.sh

### build environment 

* setup on ubuntu:
''' bash
sudo apt install ctags
sudo apt install clang-format-6.0
'''

* setup ycm:
'''
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
'''
    - get miss binary here.

* setup clang format
    - mv clang-format.py ~/software/
