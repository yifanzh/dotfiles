source ~/dotfiles/shared.sh

setopt PROMPT_SUBST

autoload -Uz compinit
compinit

export PROMPT="%F{12}%n@%m$(_fish_collapsed_pwd)%f"$'\n'"$ "

bindkey -v
bindkey '^r' history-incremental-search-backward

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
