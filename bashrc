source ~/.bash/paths
source ~/.bash/parse_git_branch
source ~/.bash/git_completion
source ~/.bash/config

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
