function hex_to_ascii
    echo $argv[1] | xxd -r -p
    printf "\n"
end

if test -r ~/.config/locals/fishlocal
    source ~/.config/locals/fishlocal
end

if test -r ~/.config/locals/aliaslocal
    source ~/.config/locals/aliaslocal
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/yifan.zhang/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
