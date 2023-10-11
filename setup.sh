#!/bin/zsh
git config --global core.pager cat
wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz
ln -s .zshenv ~/.zshenv
