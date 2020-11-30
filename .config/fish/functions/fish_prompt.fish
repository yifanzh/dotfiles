function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # User
    set_color normal
    echo -n $USER

    echo -n '@'

    # Host
    set_color $fish_color_host
    echo -n (prompt_hostname)
    set_color normal

    echo -n ' '

    if not test $last_status -eq 0
        set_color $fish_color_error
    else
        set_color $fish_color_end
    end

    echo -n '$ '
    set_color normal
end
