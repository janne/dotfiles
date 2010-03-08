if [[ -n $SSH_CONNECTION ]]; then
  PS1='%m:%3~$(git_info_for_prompt)%# '
else
  PS1='%3~$(git_info_for_prompt)%# '
fi

export EDITOR=vim

fpath=(~/.zsh/functions $fpath)

autoload -U ~/.zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
REPORTTIME=10 # print elapsed time when more than 10 seconds

setopt CORRECT # Correct spelling of commands
setopt NO_LIST_BEEP # Do not beep on ambiguous completion
setopt PROMPT_SUBST # $ expansion etc. in prompts
setopt EXTENDED_GLOB # Extended globbing
setopt VI # Enable vi mode
setopt SHARE_HISTORY # Share history between terminals
setopt COMPLETE_IN_WORD # Complete inside words
setopt VI # Enable vi mode

bindkey '^?' backward-delete-char
