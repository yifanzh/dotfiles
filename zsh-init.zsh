# ZSH specific config
setopt autocd
bindkey -v
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

if [ "$UID" -eq 0 ]; then
  export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}$(_fish_collapsed_pwd)%f %# "
else
  export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}$(_fish_collapsed_pwd)%f \$ "
fi

