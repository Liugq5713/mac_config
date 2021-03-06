# VScode 

## 比较两个文件

- 使用软件 [Beyond Compare](https://www.scootersoftware.com/download.php)
- 使用 git , 第一个文件夹的提交一个 commit,然后把第二个文件夹覆盖过去，再 git st 就知道有多少文件修改了，git diff 可以对比内容。

## vscode 替换文件

简单的替换不必说，vscode 可以使用正则表达式来替换

举个例子，把 `className='text'` 替换成 `className={style.text}`

可以在查找替换里面，写正则

`className="(.*)"` 替换为`className={style.$1}`

## vscode 快捷方式

Vscode 快捷方式 command + shift + . ，可以快速跳转页面

## [vscode 全屏终端快捷键](https://stackoverflow.com/questions/48511956/toggle-between-fullscreen-editor-and-terminal-in-vs-code#:~:text=There%20are%20two%20commands%20that,action.)

```json
{{
  "key": "ctrl+alt+m",
  "command": "workbench.action.toggleMaximizedPanel",
  "when": "!terminalFocus"
},
{
  "key": "ctrl+`",
  "command": "-workbench.action.terminal.toggleTerminal",
  "when": "!terminalFocus"
},
{
  "key": "ctrl+alt+m",
  "command": "workbench.action.terminal.toggleTerminal",
  "when": "terminalFocus"
}}
```

# 编辑器 vscode

> 毕竟现在是前端标配了，这款编辑器需要学习一些用法帮助你开发

## vscode 设置 workspace

很方便的切换任务,或者你可以使用插件 project manage

## [设置终端](https://code.visualstudio.com/docs/editor/integrated-terminal#_configuration)

Changing shell for tasks and debug#
You can set `terminal.integrated.automationShell.<platform>` to override the shell and shell args used by tasks and debug:

```json
{
  "terminal.integrated.shell.osx": "/usr/local/bin/fish",
  // Use a fully POSIX-compatible shell and avoid running a complex ~/.fishrc
  // for tasks and debug
  "terminal.integrated.automationShell.osx": "/bin/sh"
}
```

## 重构变量

还再用查找和替换修改函数名么（它的问题是有可能误伤相似的名字），在 vscode 里面试试 rename symbol ,选中变量，鼠标右击，如图

## 代码结构

代码写长了，不妨将代码收起来，组合键 `command+k` `command+0`

收起展开部分代码，收起的快捷键是 `cmd + k , cmd +[` , 这个组合键不太方便，可以将它修改为 cmd + [

## 设置 vscode 字体

推荐这一款字体:https://github.com/tonsky/FiraCode，安装完之后，在vscode的配置如下

```json
"terminal.integrated.fontFamily": "Fira Code",
"editor.fontFamily": "Fira Code",
```

## vscode 主题

以前我使用 vscode 官方的主题，但是还是感觉有点不是。Monokai Dimmind 这个主题就是非常的不错，感觉十分的柔和，不伤眼睛。

## vscode 实现远端开发部署

1. 远程主机安装 openssh-server`apt-get install openssh-server`
2. 本地主机安装 openssh-client，mac os 自带，跳过这一步`apt-get install openssh-client`
3. vscode 安装 Remote Development 插件
4. 更改配置。通过 ctrl+shift+p 打开设置 Remote-SSH-Settings，设置 Remote.SSH:Show Login Terminal 为 true，这样每次都会询问密码。
5. 添加主机。可以把常用的主机都保存下来。安装完插件后左下角会出现一个绿色的图标，点击选择会在命令窗口弹出几个选项，可以可视化添加 ssh 配置，也可以编辑配置文件。

## 比较(diff)两个文件

- [diff vscode 插件](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-diff)
- vscode 自带，在 vscdoe 的文件列表下选中待比较文件 1，右键-选择以进行比较,然后选中第二文件，右键-与已选择文件比较

## [vscode 快捷键列表查询](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)

当然它预设的快捷键可能不太够用，你可以自定义快捷键。你`ctrl_shift+p`打开快捷键方式文件，可以看到又很多的`action`被它注释掉了，一般你想用的，它都有。添加到你自定义的快捷方式里面即可

### ctrl+p 搜索文件

### ctrl+shift+o 打开文件的大纲

现在文件长度都有点长，我不太像用鼠标来回翻页，但是用上下键移动很慢，今天得知，可以使用 ctrl+shift+o 打开 vscode 的大纲，然后用上下键快速跳转，写 markdown 的时候特别好用

## vscode 直跳

vscode 当按住 command + click 跳转到定义文件之后，如何跳转回来？快捷键 ctrl+'-' ，还是挺好用的

## 解决 vscode 卡顿

忽视了文件

试试在 setting 里面加入如下代码

```json
    "search.followSymlinks": false,
    "files.exclude": {
        "**/.git": true,
        "**/.svn": true,
        "**/.hg": true,
        "**/CVS": true,
        "**/.DS_Store": true,
        "**/tmp": true,
        "**/node_modules": true,
        "**/bower_components": true,
        "**/dist": true
    },
    "files.watcherExclude": {
        "**/.git/objects/**": true,
        "**/.git/subtree-cache/**": true,
        "**/node_modules/**": true,
        "**/tmp/**": true,
        "**/bower_components/**": true,
        "**/dist/**": true
    }
```

## vscode setting

在每个项目里面新建 .vsocde 文件，把一些项目的配置可以放在这里面，可以在 vscode 排除某些文件，之前没找到，其实是 vscode 配置了 vscode files exclude

## 插件推荐

### [import-sorter](https://marketplace.visualstudio.com/items?itemName=mike-co.import-sorter)

可以帮你调整 import 文件的顺序, 需要开启配置 importSorter.generalConfiguration.sortOnBeforeSave: true,

## [网页 code server 部署](https://hackernoon.com/how-you-can-set-up-remote-development-workflow-with-vs-code-in-your-browser-3y3q3wu9)

Code server 部署

首先，部署还是很简单的。

仓库地址： https://github.com/cdr/code-server

找到文件下载地址，解压缩之后就可以跑了。运行 bin 里面的命令就可以跑了。

https://github.com/cdr/code-server/releases

跑起来之后，配置文件在：~/.config/code-server/config.yaml

```yaml
bind-addr: 10.227.14.200:8080
auth: password
password: liu123
cert: false
```

然后要让这个命令在后台跑，也很简单，运行下面命令就可以了

https://www.ibm.com/developerworks/cn/linux/l-cn-nohup/index.html

```js
nohup ./code-server
```

## vscode rg 进程起很多，导致电脑卡死

[VScode 启动后 cup100%占用的解决方法](https://my.oschina.net/u/4363202/blog/3749899)

在 setting.json 里面配置： `"search.followSymlinks":true`

## 参考

- [23 lesser known VS Code Shortcuts as GIF](https://dev.to/devmount/23-lesser-known-vs-code-shortcuts-as-gif-80)
