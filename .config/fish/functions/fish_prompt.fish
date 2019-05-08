function fish_prompt --description 'Write out the prompt'
  if test 0 -ne $status
    set marker_color red
  else
    set marker_color normal
  end
  printf '%s%s%s@%s%s %s%s %s> '\
    (set_color af5fff) \
    (whoami) \
    (set_color normal) \
    (set_color d75f00) \
    (prompt_hostname) \
    (set_color $fish_color_cwd) \
    (prompt_pwd) \
    (set_color $marker_color)
end
