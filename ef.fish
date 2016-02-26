function ef -d "Fuzzy open files with emacsclient"
  set -l files (fzf-tmux --query="$argv[1]" --select-1 --exit-0)
  if test -n "$files"
    eval $EDITOR "$files"
  end
end
