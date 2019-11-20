# Any sh compatible shell can source this first

if [ -z "$_INIT_SH_LOADED" ]; then
    _INIT_SH_LOADED=1
else
    return
fi

case "$-" in
    *i*) ;;
    *) return
esac

# PATH config
if [[ -d "$HOME/bin" ]]; then
    export PATH="$HOME/bin:$PATH"
fi

# helpers
function _fish_collapsed_pwd() {
    local pwd="$1"
    local home="$HOME"
    local size=${#home}
    [[ $# == 0 ]] && pwd="$PWD"
    [[ -z "$pwd" ]] && return
    if [[ "$pwd" == "/" ]]; then
        echo "/"
        return
    elif [[ "$pwd" == "$home" ]]; then
        echo "~"
        return
    fi
    [[ "$pwd" == "$home/"* ]] && pwd="~${pwd:$size}"
    if [[ -n "$BASH_VERSION" ]]; then
        local IFS="/"
        local elements=($pwd)
        local length=${#elements[@]}
        for ((i=0;i<length-1;i++)); do
            local elem=${elements[$i]}
            if [[ ${#elem} -gt 1 ]]; then
                elements[$i]=${elem:0:1}
            fi
        done
    else
        local elements=("${(s:/:)pwd}")
        local length=${#elements}
        for i in {1..$((length-1))}; do
            local elem=${elements[$i]}
            if [[ ${#elem} > 1 ]]; then
                elements[$i]=${elem[1]}
            fi
        done
    fi
    local IFS="/"
    echo "${elements[*]}"
}


if [[ -n "$BASH_VERSION" || -n "$ZSH_NAME" ]]; then
    touch -a "$HOME/.config/locals/shelllocal"
    source "$HOME/.config/locals/shelllocal"
    touch -a "$HOME/.config/locals/aliaslocal"
    source "$HOME/.config/locals/aliaslocal"

    # Shell-local configs
    if [[ -n "$BASH_VERSION" ]]; then
        source "$HOME/.dotfiles/bash-init.sh"
        touch -a "$HOME/.config/locals/bashlocal"
        source "$HOME/.config/locals/bashlocal"
    elif [[ -n "$ZSH_NAME" ]]; then
        source "$HOME/.dotfiles/zsh-init.zsh"
        touch -a "$HOME/.config/locals/zshlocal"
        source "$HOME/.config/locals/zshlocal"
    fi
fi

