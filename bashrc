export PATH="/usr/local/mysql/bin:~/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LC_CTYPE=sv_SE.UTF-8
export CLICOLOR=1
export EDITOR="mvim --nofork"

# Alias
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias vin='mvim -c NERDTree'

# Git scripts
source ~/.git_prompt.sh
source ~/.git_completion.sh
