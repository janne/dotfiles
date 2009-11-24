# Exports
export PATH="~/Dropbox/bin:/usr/local/bin:/usr/local/mysql/bin:~/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LC_CTYPE=sv_SE.UTF-8
export CLICOLOR=1
export EDITOR="mvim -f"

# Git scripts
source ~/.bash/git_prompt.sh
source ~/.bash/git_completion.sh

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
