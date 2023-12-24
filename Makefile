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

.PHONY: k3s-install
k3s-install:
	curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644

.PHONY: k3s-kill
k3s-kill:
	systemctl stop k3s
	systemctl disable k3s
	k3s-killall.sh

.PHONY: docker-install
docker-install:
	sudo apt install ca-certificates curl gnupg lsb-release
	sudo install -m 0755 -d /etc/apt/keyrings
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
	sudo chmod a+r /etc/apt/keyrings/docker.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt upgrade
	sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin

.PHONY: docker-chmod
docker-chmod:
	sudo usermod -aG docker haton14
	sudo chmod a+rw /var/run/docker.sock

.PHONY: python-install
python-install:
	rye config --set-bool behavior.global-python=true
	rye fetch cpython@3.12.0
