# sheldon
eval "$(sheldon source)"

# prompt git branch
setopt PROMPT_SUBST
PS1='%F{green}%n@%m:%F{cyan}%~$(parse_git_branch)
$ '
parse_git_branch() {
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ghqをfzfにパクパクさせる
fgh() {
  cd "$(ghq root)/$(ghq list >/dev/null | fzf)"
  zle reset-prompt
}
# tab+j
zle -N fgh
bindkey '^I[' fgh

# 履歴検索関連
widget::history() {
    local selected="$(history -inr 1 | fzf --exit-0 --query "$LBUFFER" | cut -d' ' -f4- | sed 's/\\n/\n/g')"
    if [ -n "$selected" ]; then
        BUFFER="$selected"
        CURSOR=$#BUFFER
    fi
    zle reset-prompt
}

export HISTFILE="${HOME}/dotfiles/zsh/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# tab+h
zle -N widget::history
bindkey '^Ih' widget::history

# Rye
source "$HOME/.rye/env"
