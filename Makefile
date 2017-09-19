# vim:set noet: 
.PHONY : vim tmux iterm2 zsh git ssh karabiner

LNSOPT=-sv

ifdef force
	ifeq ($(force),1)
		LNSOPT=-svf
	endif
endif

vim:
	cd vim/vundle ; git checkout master ; git pull;
	mkdir -p ~/.vim/bundle/ 
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln $(LNSOPT) $(CURDIR)/vim/vundle ~/.vim/bundle/Vundle.vim
	vim -c "PluginInstall"

tmux:
	ln $(LNSOPT) $(CURDIR)/tmux/tmux.conf ~/.tmux.conf

iterm2:
	ln $(LNSOPT) $(CURDIR)/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

zsh:
	ln $(LNSOPT) $(CURDIR)/zsh/zshrc ~/.zshrc
	ln $(LNSOPT) $(CURDIR)/zsh/oh-my-zsh ~/.oh-my-zsh

git:
	ln $(LNSOPT) $(CURDIR)/git/gitconfig ~/.gitconfig

ssh:
	mkdir -p ~/.ssh/
	ln $(LNSOPT) $(CURDIR)/ssh/config ~/.ssh/config
	chmod 0600 ~/.ssh/config

hammerspoon:
	ln $(LNSOPT) $(CURDIR)/hammerspoon ~/.hammerspoon

karabiner:
	ln  $(LNSOPT) $(CURDIR)/karabiner ~/.config/karabiner
