<div align=center><h1>DaiDai's dotfiles</h1></div>

<center><a href="../README.md">English</a> | <a href="doc/README-cn.md">中文</a></center>

### Introduction

<div align=center><img src="doc/img/logo.png"/></div>

`DaiDai's dotfiles` is a configuration file that creates a development environment with just one line of command.

### Renderings

![暂无]()

- vim插件管理工具使用的是Vundle
- Supporting Environment `Ubuntu` & `Mac OS`
- 自动安装zsh, tmux, vim, g++, clang, ssh, etc.

### 安装

```shell
cd ~ && git clone -b tmp https://github.com/daidai21/dotfiles && cd ~/dotfiles && sudo install.sh
```

### 功能

##### zsh

```shell
zsh  # 使用oh-my-zsh
```

##### tmux

- 功能键为`Ctrl + x`

```shell
tmux new -s tmp  # 新建名为tmp的终端
tmux ^x d  # 退出保存终端
tmux a -t tmp  # 进入名为tmp的终端
```

##### vim

- `F8`  打开关闭小地图
- `F2`  开启关闭目录

- 切换窗口
  - `ctrl w 方向`  切换窗口 
- `:sp file_name`  上下分割窗口
- `:vs file_name`  水平分割窗口
- 切换文件 `buf`
  - `:bn`  下一个文件
  - `:bp`  上一个文件
  - `:bn`  切换到第n个文件
  - `ctrl 6`  切换文件
- 切换窗口 `tab`
  - `gt`  下一个窗口
  - `gT`  上一个窗口
  - `:tabe file_name`  打开一个新窗口
  - `：tabc`  关闭窗口

- `shift z z`  保存快速退出

##### 其他

- auto jump

```shell
jc filename  # 直接跳转到文件目录
```

- tree

```shell
tree filename  # 查看某文件夹树状展开
```

### Copyright

Copyright to all individuals, reproduced please indicate the source!`Github@daidai21`
