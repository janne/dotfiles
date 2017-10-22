if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

function parse_git_branch {
  BRANCH=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
  USER=$(git config --get user.email)
  USER=${USER%%@*}
  [[ $BRANCH ]] && echo "[$USER@$BRANCH]"
}
if [[ -n $SSH_CONNECTION ]]; then
  PS1="\h:\w\$(parse_git_branch)\$ "
else
  PS1="\w\$(parse_git_branch)\$ "
fi

export EDITOR="vim"
