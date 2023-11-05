#!/bin/zsh
git config --global core.pager cat

# Go
wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz
sudo rm go1.21.3.linux-amd64.tar.gz
# Git
git config --global user.name "haton14"
git config --global user.email "haton14@haton14.com"
# Volta
curl https://get.volta.sh | bash
