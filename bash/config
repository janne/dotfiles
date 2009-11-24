export LC_CTYPE=sv_SE.UTF-8
export CLICOLOR=1
export EDITOR="mvim -f"

set -o vi

if [[ -n $SSH_CONNECTION ]]; then
  PS1="\h:\w\$(parse_git_branch)\$ "
else
  PS1="\w\$(parse_git_branch)\$ "
fi
