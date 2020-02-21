<div align=center><h1>DaiDai's dotfiles</h1></div>


### Introduction

**note**: Continuous updating!

`DaiDai's dotfiles` is a configuration file that creates a (C++ / C, Python, AI)development environment with just one line of command.

vim plug-in manager tool is Vundle. include bashic tool zsh, tmux, vim, ssh, sshfs, tree, autojump

![index](./img/index.png)

### Install

```shell
cd ~; git clone -b master https://github.com/daidai21/dotfiles && sudo ./dotfiles/install.sh
```

### Usage

`folder/`: not in `~/folder/`, this is a temp folder.

- `hosts`: in `/etc/`, config realm name and IP
- `apt.conf` in `/etc/apt/`, config global proxy
- `sources.list` in `/etc/apt/`, config apt source
- `.kaggle/kaggle.json`, kaggle shell tool used download dataset.
- `Dockerfile`, build basic ubuntu images
- [editorconfig](https://github.com/editorconfig/editorconfig-vscode)
  `Preferences.sublime-settings` is simple config file in sublime text2, no usage plugin.

##### Git

- `git config core.fileMode false`
- `git config --global core.fileMode false`

##### Zsh

```shell
zsh  # using oh-my-zsh
```

##### Tmux

- prefix key: `Ctrl + x`
- command
    - `tmux (new -s session_name -n window_name)`  create a new session
    - `tmux ^x d`  sign out and save
    - `tmux a -t session_name)`  get into named tmp session
    - `tmux ls`  show all session_name
    - `tmux kill-session -t session_name`  kill tmp session
- window
    - `prefix n` next window
    - `prefix p` previous window
    - `prefix c` create a new window
    - `prefix ,` rename current window
- window pane
    - `prefix %`  vertical split
    - `prefix "`  horizontal split
    - `prefix z`  maximize pane / recovery
    - `prefix(hold) + direction key`  adjust window pane size
- `shift mouse-right` + `click copy` copy

##### vim

- `F9`  open / close small map
- `F2`  open / close catalog

- switch windows
  - `ctrl w direction`  switch widnows
- `:sp file_name`  upper and lower segmentation windows
- `:vs file_name`  horizontal segmentation
- switch file `buf`
  - `:bn`  next file
  - `:bp`  previous windows
  - `:bn`  switch to the `n`th files
  - `ctrl 6`  switch file
- switch window `tab`
  - `gt`  previous window
  - `gT`  next window
  - `:tabe file_name`  open a new window
  - `：tabc`  close windows

- `shift z z`  save file and fast quit
- just font size
  - `ctrl -` size small, `ctrl shift +` size big
- adjust windows size
  - vs windows
    - `F5` small, `F6` big
  - sp windows
    - `F7` small, `F8` big
- fast copy paste
  - `yy` fast copy one line
  - `p` fast paste one line
- auto complete
  - `ctrl p` open auto complete
- `ctrl s` stop screen output
- `ctrl q` recovery screen output

- `:set fileformat=unix` or `:set ff=unix` change windows file format to linux/mac file format.
- `:start_lines,end_lines>` indet
- `:start_lines,end_lines<` retract   `Ctrl + d`
- `:terminal`

- **Command mode**
  - `G` go file end
  - `gg` go file head
  - `dd` delete current line
  - `ndd`  delete from current line to n next line
  - `yy` copy current line
  - `nyy` copy from current line to n next line
  - `p` paste in next line
  - `P` paste in previous line
  - `u` return previous step
  - `ctrl r` return next step
  - `.` repeat previous operator
- **Last line mode**
  - `:n1,n2s/word1/word2/g` from n1 to n2 change word1 to word2
  - `:%s/word1/word2/g` change word1 to word2 in all file
- **block selection mode** `ctrl + v`
  - `shift + i`, input insert content, then `Esc Esc`
  - `d`, then `Esc Esc`

##### Other Tool

- `auto jump`  fast to appoint name file
    - `jc filename`
- `tree` see file tree
    - `tree filename`
- avoid error rm -rf
    - `trash`
- (moss userid=662266874) check code repeat
- man manual
    - `man`
- cman manual chinese language
    - `cman`
- pip source settings
    - `pip install xxx -i source_url`
    ```
    阿里云 https://mirrors.aliyun.com/pypi/simple/
    中国科技大学 https://pypi.mirrors.ustc.edu.cn/simple/
    豆瓣(douban) http://pypi.douban.com/simple/
    清华大学 https://pypi.tuna.tsinghua.edu.cn/simple/
    中国科学技术大学 http://pypi.mirrors.ustc.edu.cn/simple/
    ```
- [git extension](https://github.com/tj/git-extras)
- wget usage proxy
    - `wget -e "http_proxy=http://127.0.0.1:8080" url`
- process manager tool
    - `supervisor`
- [conky](https://github.com/brndnmtthws/conky)
    `sudo apt-get install conky`
    `killall conky`

### CopyRight

For learning or personal user use only, all remaining rights reserved by individuals.`Github@daidai21`
