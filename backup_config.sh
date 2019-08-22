#!/usr/bin/env bash

# =============================================================================
# File Name: backup_config.sh
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Sun 18 Aug 2019 09:41:18 AM CST
# =============================================================================


# VSCode config backup
if [ `uname -s` == "Darwin" ];
then
    echo "Mac"
    cp ~/Library/Application Support/Code/User/settings.json .config/Code/User/settings.json
    cp ~/Library/Application Support/Code/User/locale.json .config/Code/User/locale.json
    cp ~/Library/Application Support/Code/User/keybindings.json .config/Code/User/keybindings_Mac.json
    code --list-extensions > extensions  # code --install-extension
elif [ `uname -s` == "Linux" ];
then
    echo "Linux"
    cp ~/.config/Code/User/settings.json .config/Code/User/settings.json
    cp ~/.config/Code/User/locale.json .config/Code/User/locale.json
    cp ~/.config/Code/User/keybindings.json .config/Code/User/keybindings.json
    code --list-extensions > folder/extensions  # code --install-extension
fi
