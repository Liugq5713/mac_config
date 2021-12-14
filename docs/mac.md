# Mac Tutorial

## 基本配置

## 可以通过脚本来一键安装软件

[安装脚本](https://gist.github.com/Liugq5713/3a284e861b54becd4c1146d68ec01c54)

第一步安装 HomeBrew，这是一个包管理软件

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 安装软件

```
brew cask install google-chrome iterm2 sourcetree alfred  visual-studio-code postman imagemagick gs
```

### shell zsh

```
brew install zsh
chsh -s /bin/zsh
```

use Oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### [rg](https://github.com/BurntSushi/ripgrep#installation)

一个很快的搜索工具，可以与 fzf 配合使用

### [fzf](https://github.com/junegunn/fzf)

通用的搜索
[使用指南](https://keelii.com/2018/08/12/fuzzy-finder-full-guide/)

#### [jq](https://stedolan.github.io/jq/)

格式化 json

#### [mycli](https://github.com/dbcli/mycli)

比原生更加好用的 mysql shell 客户端

#### [AutoJump](https://github.com/wting/autojump)

帮助你快速跳转，它会记住你访问过的文件路径

## iterm 使用指南

### [快捷键参考](https://gist.github.com/squarism/ae3613daf5c01a98ba3a)

### 快速移动

- _option + Left Click_: Cursor Jump with Mouse (shell and vim - might depend on config)
- _ctrl+ a / e_: home or end
- _ctrl+ k/ w _: delete to the end of line / delete previous word

## 必备软件

- [Keka 解压软件](https://www.keka.io/en/)
- [欧陆词典](https://www.eudic.net/v4/en/app/download)
- [iina 播放器](https://iina.io/)
- [Spectacle 屏幕分屏](https://www.spectacleapp.com/)

## 安装必要的软件

## VS Code

## Git Config

```
git config --global user.email "liugq5713@gmail.com"
git config --global user.name "liuguangqi"
```

## mac 删除应用的方法

打开访达，选择应用程序，然后将你想删除的应用程序拖到废纸篓里面去即可。

## [如何禁止 mac 更换工作区](https://www.zhihu.com/question/49530172)

System Preference > Mission Control，禁用掉 rearrange workspace

## [Mac 上把 shell 的输出 直接复制到剪贴板上](https://scriptingosx.com/2017/03/terminal-and-the-clipboard/)

`$ cat ideas.txt | pbcopy`

## 停止 8080 端口的任务

`lsof -n -i4TCP:8080 ` 找到该任务，然后 kill

## 美化工作

美化工作一般由

- zsh theme
  [theme Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) , 目前用的最好的 zsh 主题了

- alacritty color schema [color schema](https://github.com/alacritty/alacritty/wiki/Color-schemes) 我选 Colors (Gruvbox dark)
- tmux color schema

  ```txt
  // github 地址： https://github.com/egel/tmux-gruvbox
  set -g @plugin 'egel/tmux-gruvbox'
  set -g @tmux-gruvbox 'dark'
  ```

- vim theme ,

  ```txt
  // https://github.com/morhetz/gruvbox
  colorscheme gruvbox
  set background=dark
  ```

- 字体

字体我使用 [FiraCode](https://github.com/tonsky/FiraCode)
另外，由于主题里面会用用到一些图标，所以需要下载字体的补丁。在 [nerd font 官网](https://www.nerdfonts.com/font-downloads) 下载 FiraCode Nerd Font 字体。

:::tip

下载完字体，一定得配置，一下才能生效。

下载完之后，在 alacritty 配置：

```txt
font:
  normal:
    family: FiraCode NF
    style: Light
```

如果你使用的是 iterm2 ， 需要在 iterm2 的配置一下字体

:::

## TodoList 命令行版

> https://taskwarrior.org/docs/ 命令行 TodoList 文档

`brew install Taskwarrior`

## neofetch

> neofetch – Awesome system info bash script for Linux, MacOS, Unix

`brew install neofetch`

## 终端 clear

在一个干净的控制台输入新命令时，会使用 clear 命令或 reset 命令清空当前屏幕，但有个快捷键也能实现相同的功能：

清空屏幕快捷键：`ctrl + l`

## 参考

- [mac 通过自带的 ssh 连接 Linux 服务器并上传解压文件](http://weiqinl.com/2018/01/27/mac%E9%80%9A%E8%BF%87%E8%87%AA%E5%B8%A6%E7%9A%84ssh%E8%BF%9E%E6%8E%A5Linux%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%B9%B6%E4%B8%8A%E4%BC%A0%E8%A7%A3%E5%8E%8B%E6%96%87%E4%BB%B6/)
- [前端程序员的 macOS 搭建指南](https://github.com/phodal/setup.guide)
- [命令行](https://github.com/jlevy/the-art-of-command-line/blob/master/README-zh.md)
- [20 Sed (Stream Editor) Command Examples for Linux Users](https://www.linuxtechi.com/20-sed-command-examples-linux-users/)
- [Sed Command in Linux/Unix with examples](https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/)
