function fish_prompt --description 'Write out the prompt'
    set stat $status
    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    # Set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
    end

    printf '%s%s%s%s@%s %s%s \f\r%s>%s ' \
    (set_color $fish_color_cwd) (date "+%H:%M:%S") \
    (set_color $fish_color_cwd) (echo $USER | head -c5) (prompt_hostname) \
    (set_color $fish_color_cwd) (prompt_pwd) \
    "$__fish_color_status" "$__fish_prompt_normal"
end
