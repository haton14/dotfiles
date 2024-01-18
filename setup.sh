#!/bin/zsh
git config --global core.pager cat
git config --global core.editor vim

# Go
wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
sudo rm go1.21.6.linux-amd64.tar.gz

# Git
git config --global user.name "haton14"
git config --global user.email "haton14@haton14.com"

# Volta
curl https://get.volta.sh | bash -s -- --skip-setup
volta install node

# fzf
sudo apt install fzf

# ghq
go install github.com/x-motemen/ghq@latest

# sheldon
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
    | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin

# Python
curl -sSf https://rye-up.com/get | bash
