dotfiles
========

Mac branch.

事项注意
--------

首先，更新所有submodule:

    git submodule update --init

如果需要强制建立软连接(以vim为例):

    make vim force=1

vim
---

1. 系统依赖: ctags

2. mac安装ctags:

    ```
    brew install ctags
    ```

3. 然后:

  ```
  $ make vim
  ```
  该部分vim配置包含vim bundle（vundle）和solarised color scheme。
  
  安装vundle的方式如下：
  
  打开一个vim窗口，在命令模式下输入
  
     :PluginList    //会显示你vimrc里面填写的所有插件名称  
     :PluginInstall  //会自动下载安装或更新你的插件。  

tmux
----

    $ make tmux

iterm2
------

    $ make iterm2

然后安装iterm2/badwolf.itermcolors

git
---

    $ make git

zsh
---

    $ make zsh
    
powerline
---
从@乐乐同学了解到powerline 的强大功能.

hammerspoon
---
mac  os x 窗体快速定位
