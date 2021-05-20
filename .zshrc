source ~/dotfiles/shared.sh

setopt PROMPT_SUBST

autoload -Uz compinit
compinit

PROMPT="%F{92}%n%f@%F{92}%m%f %(?.%F{green}$%f.%F{red}$%f) "

bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '[3~' delete-char
bindkey '[H' beginning-of-line
bindkey '[F' end-of-line
bindkey 'f' forward-word
bindkey '[5C' forward-word
bindkey '[C' forward-word
bindkey '[1;5C' forward-word
bindkey 'OC' forward-word
bindkey 'b' backward-word
bindkey '[5D' backward-word
bindkey '[D' backward-word
bindkey '[1;5D' backward-word
bindkey 'OD' backward-word

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
source ~/.wishdevenv
