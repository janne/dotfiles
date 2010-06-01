export PATH="/usr/local/bin:/usr/local/mysql/bin:~/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LC_CTYPE=sv_SE.UTF-8
export EDITOR="vim"

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

function parse_git_branch {
  BRANCH=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
  [[ $BRANCH ]] && echo "[$BRANCH]"
}
if [[ -n $SSH_CONNECTION ]]; then
  PS1="\h:\w\$(parse_git_branch)\$ "
else
  PS1="\w\$(parse_git_branch)\$ "
fi

set -o vi

for c in `ls .completions`
  do source .completions/$c
done

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
