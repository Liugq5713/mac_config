# VIM

## neovim install
[Liugq5713/nvim](https://github.com/Liugq5713/nvim)


如果你的 pip3 运行有问题，可以运行命令

You should consider upgrading via the '/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip' command.

然后运行

```shell
pip2 install neovim
pip3 install neovim
```



## 基本知识
### 个人习惯配置

将大写键 映射为 ctrl ， 退出 vim 通过 `ctrl+[` 命令实现。

### 命令语法

每当在命令语法里看到{motion} 时，你也可以在这个地方使用文本对象，常见的例子包括 d{motion}、c{motion}和 y{motion}。

### 键位

`<BS>` means Backspace, see :help key-notation

### 文本对象

Vim 的文本对象分为两类：一类是操作分隔符的文本对象，如 i)、i" 和 it；另一类用于操作文本块，如单词、句子和段落。

Vim 的文本对象由两个字符组成，第一个字符永远是 i 或是 a。我们一般说，以 i 开头的文本对象会选择分隔符内部的文本，而以 a 开头的文本对象则会选择包括分隔符在内的整个文本。为了便于记忆，可以把 i 想成“inside”，而把 a 想成“around”或“all”

- 操作符号+ 动作命令
  这一点感觉是 vim 操作上最大的优势之一，首先熟悉一下常用的文本对象

```txt
iw : 当前单词
aw : 当前单词及一个空格
ip : 当前段落
ap : 当前段落及一个空行
it : 这个对前端很有用，表示一个标签内的内容
```

以删除为例 d{motion}，搭配动作命令我们可以快速做到很多操作例如

```txt
d2d  : 删除两行
daw  : 删除一个单词（包括空格）
dap  : 删除段落（包括空行）
dit  : 删除标签内的内容
dl   : 删除一个字符
```

## [移动](https://harttle.land/2015/11/07/vim-cursor.html)

### 字符移动

h j k l，表示左下上右

### 单词移动

- w 移动光标到下一个单词的词首,W 以单词开头（空格分隔单词）跳转
- b 上一个单词的词首,B 按单词向后跳（空格分隔单词）
- e 移动到单词的末尾, E 跳到单词结尾（空格分隔单词）
- ge 移动到上一个单词的末尾
- 0 $ 类似于正则，0 是行首，$ 是行尾
- ^ 行的第一个非空白字符（与 0w 相同）

### 相对屏幕移动

- 通过 C-f 向下翻页
- C-b 向上翻页
- C-e 逐行下滚
- C-y 逐行上滚
- Ctrl+d 下移半页
- Ctrl+u 上移半页

输入 CTRL-G 显示当前编辑文件中当前光标所在行位置以及文件状态信息。

- 大写 G 跳转到文件底部
- gg 跳转到文件开头

### 屏幕相对于光标进行移动

这种滚屏方式相对于翻页来讲，它的好处在于，你能够始终以当前光标位置做为参照，不会出现翻几次页后，发现自己迷失了方向。

- zt scrolls to the top
- zz scrolls to the middle
- zb scrolls to the bottom

### 段落内移动

- } 按段落前进（下一个空白行）
- { 按段落后退（下一个空白行）

### 标记跳转移动

有的时候我们想在几个离得很远的函数相互间跳来跳去，我们可以使用 vim 的标记功能，m{字母}打标记，`{字母}进行跳转。

- m ——创建标记
- ' ——移动到标记的文本行首
- ` ——移动到标记的光标位置
- :marks ——列示所有标记
- :delmarks ——删除指定标记
- :delmarks! ——删除所有标记

### 基于历史记录跳转

- `ctrl+o`: go to the older position
- `ctrl+i`: go to the newer one

想查看详细，可以运行 `:help jumplist`

## 查找与[替换](http://xstarcd.github.io/wiki/vim/vim_replace_encodeing.html)

### 查找

- 光标停留在要查找的单词上，按# 或`*`进行快速前后查找单词
- f/F [char] 光标后移至当前行的下一个字符，F 方向是前移
- t/T [char] 移至光标后当前行的下一个字符之前，T 方向是前移
- f/F [char] 光标后移至当前行的下一个字符，F 方向是前移
- t/T [char] 移至光标后当前行的下一个字符之前，T 方向是前移
- 命令行输入`/{查找内容}`,可以用查找命令（以及 n / N 命令）跳转到匹配指定模式的地方。每次在可视模式中移动光标，都会改变高亮选区的边界, [搜索](https://www.cyberciti.biz/faq/find-a-word-in-vim-or-vi-text-editor/)。如果你想设置多个寻找条件，只需要在条件前加上 /，比如： `:/foo//bar//quux/d`

### 替换

`:{作用范围}s/{目标}/{替换}/{替换标志}`

```vim
:s/vivian/sky/ 替换当前行第一个 vivian 为 sky
:s/vivian/sky/g 替换当前行所有 vivian 为 sky
```

替换当前文件内所有的字符

```vim
:%s/vivian/sky/g 替换当前行所有 vivian 为 sky
```

c 表示需要确认，例如全局查找"foo"替换为"bar"并且需要确认：

```vim
:%s/foo/bar/gc
```

```
gu	# 转小写
gU	# 转大写
```

## 编辑

### [缩略词](https://zhuanlan.zhihu.com/p/24950030)

如果你有一些特定的名词很长，或者很难打，你就可以使用 vim 的缩略词

使用以下命令，将定义 ad 来代替 advertisement：

```js
:abbreviate ad advertisement
// 简写成ab也是可以的
:ab ad advertisement
```

移除某个缩写 `:unabbreviate ad`

清除所有缩写： `:abclear`

### 撤销

撤销操作 u

撤销一个撤销 CTRL+R，我个人把这个操作符改为了 U

### 删除

x 代表删当前光标的所在的一个字符

更改类操作符的工作方式跟删除类是一致的。操作格式是：

`c [number] motion`,删除后进入编辑模式

`d [number] motion` 仅删除

### 大小写转化

进入可视模式，选择文本，然后直接按 `gU`,会把小写转大写，`gu` 把大写转小写。

另一种方式，在 normal 模式下，`gUw` 把后面的单词大写，`guw`把剩下的单词小写。`gUiw` 把光标所在的单词大写

### vim 交换两行的位置 ddp

`/foo`, 通过 n 查找下一个，通过 n 查找上一个.

### 复制粘贴

方法一:按 `v` 进入可视模式，然后通过方向键选择，按 `y` 进行复制，按 `p` 进行粘贴

方法二:进行命令默认，输入`y2`，代表复制当前光标下的两行，然后按`p`进行粘贴

_复制一个 vim 文件内的所有内容_

`:%y+`

to yank all lines.

Explanation:

```
% to refer the next command to work on all the lines
y to yank those lines
- to copy to the system clipboard
```

#### 复制到剪贴板

[How can I copy text to the system clipboard from Vim?](https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim)

系统里面一般都装的最小的 vim，可能没有剪贴板。通过`vim --version |grep clipboard`查看是否安装剪贴板

如果没有安装，运行`sudo apt install vim-gnome`

`+`使用剪贴板,把一行复制到剪贴板`+pp`

### 回退操作

u : 撤销上一步操作
ctrl+r : 恢复上一步被撤销的操作

## 可视模式

vim 对于从列块可视模式切换到插入模式的命令也遵从类似的约定。i 命令和 a 命令都完成此切换，并分别把光标置于选区的开头和结尾。那 i 和 a 命令呢，它们在可视模式里干什么？在可视模式及操作符待决模式中，i 和 a 键沿用一个不同的约定。它们会被当作一个文本对象的组成部分，我们将在技巧 51 中深入探讨文本对象。如果你在列块可视模式里选中了一块区域，并且很奇怪为什么按 i 键没进入插入模式，那么换用 i 键试一下。

## 工作流

### 文件间切换

`:bn`下一个文件
`:bp`上一个文件

### [vim 里面的 leader 是什么](https://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file#:~:text=the%20%22leader%20key%22%20is%20a,that%20action%20by%20typing%20%5cq.)

可以自定义的快捷键,一般定义为空格，很方便，逗号不太好，因为不太好按。

### [在 vim 里面执行 shell 命令](https://superuser.com/questions/285500/how-to-run-unix-commands-from-within-vim#:~:text=go%20to%20command%20mode%20esc,to%20your%20work%20in%20vim.)

`!<shell command>`

### [刷新在 vi（m）中打开的文件的更改内容](https://qastack.cn/unix/149209/refresh-changed-content-of-file-opened-in-vim)

`:edit` 可以缩写为 `:e`
`:edit!`用来强制重新加载当前文件（您将丢失所做 的修改）。

### 录制宏

1. 在 normal 模式下，按 q 加一个字母开始录制。例如按下 qr，将该宏注册为 r。

进行任意的操作

2. 按下 q 完成录制。

如何使用宏

`@r` , 使用 `@@` 重复使用上一次的宏

查看宏： `:reg <letter>`

### 分屏

`:vsp` ： 垂直分屏 `:sp` 水平分屏

`ctrl+w c` 退出分屏

非常好用

### 窗口最大化最小化

```vim
noremap <C-w>m <C-W>_<C-W><Bar>
noremap <C-w>M <C-W>=
```

[vundle](https://gist.github.com/remarkablemark/23669b32afad86d32b1084f6abc4a9b5)

### [ 自动运行 ](https://learnvimscriptthehardway.stevelosh.com/chapters/12.html)

### [vim diff](https://unix.stackexchange.com/questions/1386/comparing-two-files-in-vim)

把两个文本打开，然后在屏幕下分别运行`:diffthis`,即可比较两个文本。

## neovim

使用 neovim 已经它的插件能很方便的给你带来代码补全等 IDE 的功能。

[Vim for TypeScript and React in 2020](https://medium.com/@vanuan/vim-for-typescript-and-react-in-2020-9724b9139be2)

`pip3 install --user neovim`

- [unknown function tsclosewindow](https://github.com/mhartington/nvim-typescript/issues/233)
- ["failed to load {python,python3} host" problem](https://github.com/neovim/neovim/issues/6414)
- [how to install neovim and plugins with vim-plug](https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/)

## 命令模式

在命令模式下，光标在一个单词上面，那你输入`<C-r><C-w>`, 就能把这个单词插入到命令里面

如果想要查找命令历史，可以 `<C-p>` 向上， `<C-n>` 向下

## 在命令模式下可以直接进 shell

在 vim 中 ，`:shell` 就能进 shell , 但是在 neovim 中，运行 `:te` 进入 shell

## 其他问题

### vim 换行

教程上说设置 set wrap 就可以了，但是没有效果。需要删除一些文件 `rm -rf ~/.vimviews`

- [set wrap in .vimrc.local not working](https://github.com/spf13/spf13-vim/issues/254)

### vscode vim 插件

通过这个命令就可以到文件夹，查看文件树：

pane/window with normal vim commands: `<c-w> + h`.

## Plugin

### nerdtree

use `<c-e>` to toggle nerdtree

`:nerdtreefind` : 打开当前文件目录，vim 快捷键是 `<leader> e `

let g:nerdtreequitonopen = 1 打开文件后自动关闭 nerdtree ，一般情况下建议不关闭，不关的话，感觉就很像 vscode 了。

- 添加书签

有的文件目录很大，可以添加书签方便下次查找

in [nerdtree], you can toggle the display of bookmarks with b. when your cursor is on a file name there do :bookmark to add it to the bookmarks list.

this is nice when you’re working in a folder with 414 files and you only need to periodically work with 3 of them that are in deeply nested directories.

`:b` 命令展示所有的标签

- menu

pressing m would open a menu below and you can select from a list of actions. 你可以进行额外的一些操作

### markdown

[ 在 vim 中使用 markdown 也是很方便的。 ](https://www.jianshu.com/p/fa8c56e1aa52)

- markdown 语法高亮 gabrielelana/vim-markdown
- 生成 toc 导航栏 https://github.com/preservim/tagbar https://github.com/jszakmeister/markdown2ctags

打开 markdown 中的[超链接](https://stackoverflow.com/questions/26919972/follow-link-in-vim-with-markdown-syntax) , 使用 `gx` 命令打开。

[参考](https://zjinc36.github.io/2019/07/29/vim%E4%B8%AD%E6%98%BE%E7%A4%BAmarkdown%E7%BB%93%E6%9E%84%E5%A4%A7%E7%BA%B2/)

### snippet 编写

我使用的是 coc-snippet

use command `:CocCommand snippets.editSnippets` to open user snippet of current filetype.

### [vim-surround 使用指南，vim-surround 如何使用](https://gist.github.com/wilon/ac1fc66f4a79e7b0c161c80877c75c94)

普通模式

| 命令 | 说明 | 实例                                   |
| ---- | ---- | -------------------------------------- |
| ds   | 删除 | `ds"` "Hello world!" =>Hello world!    |
| cs   | 替换 | `cs"(` "Hello world!" =>(Hello world!) |
| ys   | 增加 | `ysw(` "Hello world!" =>(Hello) world! |

命令模式

| 命令 | 说明         | 实例                                 |
| ---- | ------------ | ------------------------------------ |
| S    | 选中的括起来 | `S(` "Hello world!" =>(Hello world!) |

### vim-fugitive

http://tpope/vim-fugitive,通过命令 Gdiff 可以很方便查看文件有哪些改动。

## 教程参考

- [Why I love Vim: It’s the lesser-known features that make it so amazing](https://www.freecodecamp.org/news/learn-linux-vim-basic-features-19134461ab85/)
- [vim 分屏操作](https://www.jianshu.com/p/52949caa7e93)
- [透悉 Vi Grok Vi](https://github.com/chengcyber/TinyThoughts/blob/master/Coding/GrokVi.md)
- Type vimtutor into a shell to go through a brief interactive tutorial inside VIM.
- [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
- [Vim 从入门到精通](https://github.com/wsdjeg/vim-galore-zh_cn)
- [透悉 Vi Grok Vi,写的略晦涩](https://github.com/chengcyber/TinyThoughts/blob/master/Coding/GrokVi.md)
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [简明 Vim 练级攻略 | 酷 壳 - CoolShell](https://coolshell.cn/articles/5426.html)

## VIM 资源

- [Vim Awesome](https://vimawesome.com/)
