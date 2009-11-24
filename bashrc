source ~/.bash/config
source ~/.bash/paths
source ~/.bash/git_prompt
source ~/.bash/git_completion

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
