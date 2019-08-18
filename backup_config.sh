#!/usr/bin/env bash

# =============================================================================
# File Name: backup_config.sh
# Author: DaiDai
# Mail: daidai4269@aliyun.com
# Created Time: Sun 18 Aug 2019 09:41:18 AM CST
# =============================================================================


# VSCode config backup
if which apt-get > /dev/null -o which yum > /dev/null;
then  # Linux
    cp ~/.config/Code/User/settings.json VSCode/settings.json
    cp ~/.config/Code/User/locale.json VSCode/locale.json
    cp ~/.config/Code/User/keybindings.json VSCode/keybindings.json
    code --list-extensions > extensions  # code --install-extension
elif which brew > /dev/null;
then  # Mac
    cp ~/Library/Application Support/Code/User/settings.json VSCode/settings.json
    cp ~/Library/Application Support/Code/User/locale.json VSCode/locale.json
    cp ~/Library/Application Support/Code/User/keybindings.json VSCode/keybindings_Mac.json
    code --list-extensions > extensions  # code --install-extension
else
    echo "OS: win"
    # Path: %APPDATA%\Code\User\settings.json
fi
