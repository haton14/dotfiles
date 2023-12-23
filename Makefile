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

docker-install:
	sudo apt install \
		ca-certificates \
		curl \
		gnupg \
		lsb-release
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	echo \
		"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
		$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt upgrade
	sudo apt install install docker-ce docker-ce-cli containerd.io docker-compose-plugin
