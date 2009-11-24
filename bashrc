# Exports
export PATH="~/Dropbox/bin:/usr/local/bin:/usr/local/mysql/bin:~/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LC_CTYPE=sv_SE.UTF-8
export CLICOLOR=1
export EDITOR="mvim -f"

# Git scripts
source ~/.git_prompt.sh
source ~/.git_completion.sh

# Source all files in ~/init
if [ -f ~/init/* ]; then
  for f in ~/init/*; do
    source $f
  done
fi
