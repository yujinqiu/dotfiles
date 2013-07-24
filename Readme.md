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

  - Download ctags from http://ctags.sourceforge.net/
  - extract it, and 

    ```
    ./configure
    sudo make install
    ```

3. 然后:

  ```
  $ make vim
  ```

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
