function fish_right_prompt
  __tmux_prompt
  set -l exit_code $status
  if test $exit_code -ne 0
    set_color red
  else
    set_color 666666
  end
  printf '%d' $exit_code
  set_color 666666
  printf ' < %s' (date +%H:%M)
  set_color normal
end
