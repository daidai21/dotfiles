<div align=center><h1>DaiDai's dotfiles</h1></div>


### Introduction

note: Continuous updating!

`DaiDai's dotfiles` is a configuration file that creates a development environment with just one line of command.

### Renderings

- vim plug-in manager tool is Vundle
- Supporting Environment `Ubuntu` & `Mac OS`
- auto install zsh, tmux, vim, g++, clang, ssh, etc.

### Install

```shell
cd ~ && git clone -b tmp https://github.com/daidai21/dotfiles && cd ~/dotfiles && sudo install.sh
```

### Function

##### Zsh

```shell
zsh  # using oh-my-zsh
```

##### Tmux

- function key: `Ctrl + x`

```shell
tmux new -s tmp  # create a new terminal named tmp
tmux ^x d  # sign out and save terminal
tmux a -t tmp  # get into named tmp
```

- switch windows
  - `prefix n` next windows
  - `prefix p` previous windows
  - `prefix c` create a new windows

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

##### Other Tool

```shell
# auto jump
jc filename  # fast to appoint name file

# tree
tree filename  # see file tree
```

### Copyright

Copyright to all individuals, reproduced please indicate the source!`Github@daidai21`

