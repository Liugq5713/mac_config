# Iterm Tutorial

iterms 比较好用的一点，在命令行输入 d ，就可以输出 10 个你使用的目录，然后通过数字来跳转，真的非常方便

## 几个快捷键

- Ctrl + A：移动到行首
- Ctrl + E：移动到行尾
- Ctrl + K：删除到行尾

## mac 使用自定义快捷键调出终端

推荐使用 iTerm2，比自带的强大一些。

`iTerm2 -> Preferences -> Appearance -> Hotkey -> Check Show/hide`

## iterm 推荐主题

https://draculatheme.com/iterm/

## 调整字体

别人推荐的字体：https://github.com/powerline/fonts

折腾了一通之后，中文字体我设置为了 苹方，英文字体设置了 Monaco

字体大小我设置为 16，还是比较舒服。

## zsh 推荐主题 ：Powerlevel10k

Type p10k configure to access the builtin WISIWIG configuration wizard right from your terminal.

## 分屏幕

竖分屏 `command+d` 横分屏 `command+shift+d`

iterm的使用小技巧，我觉得分为多个标签页还是有点麻烦，不如使用分屏，然后分屏的话，在不同屏幕之间跳转 command + [

## 添加插件

[zsh 添加多个 plugin 的时候，使用空格隔开](https://opensource.com/article/19/9/adding-plugins-zsh)

### 推荐插件

- zsh-syntax-highlighting
- zsh-autosuggestions
- zsh-history-substring-search

记得在 zshrc 配置文件里面开启：

```js
plugins=(
  git
  autojump
  zsh-autosuggestion
  zsh-syntax-highlighting
)
```

## iterm2 开启状态栏

- [状态栏文档](https://www.iterm2.com/documentation-status-bar.html)

## 参考

- [items 的使用指南](https://xiaozhou.net/learn-the-command-line-iterm-and-zsh-2017-06-23.html)
- [使用 zsh 的十个建议，还挺实用的](https://www.sitepoint.com/zsh-tips-tricks/)
- [iTerm2 配置和美化](https://sspai.com/post/63241)
 
