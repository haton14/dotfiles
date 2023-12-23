.PHONY: zsh-install
zsh-install:
	sudo apt install zsh
	chsh -s /usr/bin/zsh

.PHONY: setup
setup:
	./setup.sh

.PHONY: link
link:
	ln -sfv zsh/.zshenv $(HOME)/.zshenv
	ln -sfv zsh/.zshrc $(HOME)/.zshrc
