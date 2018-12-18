# Bash specific config

if [ "$UID" -eq 0 ]; then
  export PS1='\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m \[\e[38;5;118m\]$(_fish_collapsed_pwd)\[\e[0m\] \# '
else
  export PS1='\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m \[\e[38;5;118m\]$(_fish_collapsed_pwd)\[\e[0m\] \$ '
fi

