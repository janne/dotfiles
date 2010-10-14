export PATH="/usr/local/bin:~/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LC_CTYPE=sv_SE.UTF-8
export CLICOLOR=1
export EDITOR="mvim -f"
export LSCOLORS=gxfxcxdxbxegedabagacad

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

# VI key bindings
set -o vi
bind -m vi-insert "\C-n":menu-complete
bind -m vi-insert "\C-l":clear-screen

for c in `ls ~/.completions`
  do source ~/.completions/$c
done

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
