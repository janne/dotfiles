source ~/.bash/paths.sh
source ~/.bash/parse_git_branch.sh
source ~/.bash/git_completion.sh
source ~/.bash/config.sh

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
