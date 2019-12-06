function fish_prompt --description 'Write out the prompt'
    set stat $status

    set prompt_status_color (set_color -o green)
    if test $stat -gt 0
        set prompt_status_color (set_color -o red)
    end

    printf '%s[%s] %s@%s %s \f\r%s>%s ' (set_color -o blue) (date "+%H:%M:%S") $USER (prompt_hostname) (prompt_pwd) "$prompt_status_color" "$__fish_prompt_normal"

end
