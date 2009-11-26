source ~/.zsh/config.zsh
source ~/.zsh/paths.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
