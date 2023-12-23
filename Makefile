.PHONY: zsh-install
zsh-install:
	sudo apt install zsh
	chsh -s /usr/bin/zsh

.PHONY: link
link:
	ln -sfv $(HOME)/dotfiles/zsh/.zshenv $(HOME)/.zshenv
	ln -sfv $(HOME)/dotfiles/zsh/.zshrc $(HOME)/.zshrc

.PHONY: setup
setup:
	./setup.sh


