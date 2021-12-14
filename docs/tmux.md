# Tmux

## 个人配置

因为我把 caps 键映射为了 ctrl 键，为了更方便按 tmux , 所以把 tmux 的 prefix 键 修改成了 ctrl + f 。

[gpakosz/.tmux: Oh my tmux! My self-contained, pretty & versatile tmux configuration made with ❤️](https://github.com/gpakosz/.tmux)

如果后面安装了一些 tpm 插件，run `prefix + I`，fetch the plugin and source it. 

## Tmux 快捷键 & 速查表 & 简明教程

https://gist.github.com/ryerh/14b7c24dfd623ef8edc7

## [ 作用 ](https://github.com/tmux/tmux/wiki/Getting-Started)

1. 在 tmux 里面可以保护在远程服务器上的程序
2. 从不同的本地机器上可以访问运行在远程服务器上的程序
3. 在一个终端内使用多个程序，或者 shell ，类似窗口管理器。

## 理解 session 和 window 和 pane

session 会话：一个服务可以包含多个会话，

窗口： 一个 session 可以包含多个 window

pane: 一个 window 可以被分为多个 pane

## 关闭 session

按您的前缀（例如 Ctrl+ A 或 B，这是默认设置），然后:键入 kill-session，然后按 Enter。

或者在终端运行

```shell
tmux ls
tmux kill-session -t xxx
```

## session
```js
Ctrl+b d：分离当前会话。
Ctrl+b s：列出所有会话。
Ctrl+b $：重命名当前会话。
```

### create session

- outside a tmux session 

创建一个新的 session , `tmux new -s xxx`

- [Create new tmux session from inside a tmux session | Newbedev](https://newbedev.com/create-new-tmux-session-from-inside-a-tmux-session)

The quickest way (assuming you use ctrl-b as your command prefix) is:

`ctrl-b :new`

## window 间切换

```js
<prefix> c 		创建 window
<prefix> & 		删除或者关闭 window
<prefix> n 		下一个 window
<prefix> p 		上一个 window
<prefix> w 		列出现在开启的 window
<prefix> , 		重命名 window
<prefix> f 		在多个 window 里搜索关键字
<prefix> l 	    last window 在相邻的两个 window 里切换
<prefix> 0,1,2  在 window 之间切换，如果窗口数超过 10 个，可以使用 `<prefix> 'num` 来切换

```

## 交换窗口位置

```shell
swap-window -s 3 -t 1  交换 3 号和 1 号窗口
swap-window -t 1       交换当前和 1 号窗口
move-window -t 1       移动当前窗口到 1 号
<prefix> o：光标切换到下一个窗格。
<prefix> {：当前窗格与上一个窗格交换位置。
```

## tmux 持久化

[Tmux Resurrect & Continuum: 持久保存 Tmux 会话](https://linuxtoy.org/archives/tmux-resurrect-and-continuum.html)

要安装 Tmux Resurrect，可执行：

```shell
% mkdir ~/.tmux
% cd ~/.tmux
% git clone https://github.com/tmux-plugins/tmux-resurrect.git
```

官方推荐通过 Tmux 插件管理器来安装，如果你需要安装多个插件，不妨自行尝试。然后在 ~/.tmux.conf 中添加下列内容：
`run-shell ~/.tmux/tmux-resurrect/resurrect.tmux `

现在，要保存 Tmux 会话，我们只要按 前缀键 + Ctrl-s 就可以了。此时，Tmux 状态栏会显示“Saving ...”字样，完毕后会提示 Tmux 环境已保存。

Tmux Resurrect 工作很好，只是备份和还原都是手动完成。而 Tmux Continuum 更进一步，它将 Tmux 会话的保存及还原自动化，定时备份，然后在 Tmux 启动时还原。

Tmux Continuum 的安装方法与 Tmux Resurrect 类似：

```shell
% cd ~/.tmux
% git clone https://github.com/tmux-plugins/tmux-continuum.git
```

### Key bindings

prefix + Ctrl-s - save
prefix + Ctrl-r - restore

## 调整窗口位置

假设您的前缀键是 Ctrl-B（在 Mac 上为 Cmd-B）：

1. 按 Ctrl-B 并释放
2. 按住 Meta 键（在 Mac 上为 Option）
3. 按住 Meta 键时，反复按箭头键可调整当前窗格的大小

## 参考

- [阮一峰 tmux](http://www.ruanyifeng.com/blog/2019/10/tmux.html)
- [Tmux 快捷键 & 速查表 & 简明教程](https://gist.github.com/ryerh/14b7c24dfd623ef8edc7)
