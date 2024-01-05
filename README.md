# dotfiles

haton14のdotfiles for Ubuntu

マシン独自の環境変数は`~/.zprofile`に記述する

Macの場合にはいい感じにhomebrewでツールをインストールする

## pre setup

```bash
sudo apt update
sudo apt upgrade
sudo apt install gh make language-pack-ja
# gh経由でGitHubのssh鍵を作成する
gh auth login
```

## setup zsh

```bash
make zsh-install
make link
```

## setup

```bash
make setup
```
