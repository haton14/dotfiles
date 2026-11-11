.PHONY: link
link:
	ln -sfv $(HOME)/dotfiles/zsh/.zshenv $(HOME)/.zshenv
	ln -sfv $(HOME)/dotfiles/zsh/.zshrc $(HOME)/.zshrc

.PHONY: setup
setup:
	./setup.sh
