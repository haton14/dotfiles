#!/bin/zsh
git config --global core.pager cat
git config --global core.editor vim

# Go
GO_VERSION=1.27.4
case "$(uname -m)" in
  arm64) GO_ARCH=arm64 ;;
  *) GO_ARCH=amd64 ;;
esac
GO_TARBALL="go${GO_VERSION}.darwin-${GO_ARCH}.tar.gz"
curl -fLO "https://go.dev/dl/${GO_TARBALL}"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "${GO_TARBALL}"
rm "${GO_TARBALL}"

# # Git
# git config --global user.name "haton14"
# git config --global user.email "haton14@haton14.com"

# fzf, ghq, sheldon
brew install fzf ghq sheldon

