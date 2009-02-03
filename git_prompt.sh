function parse_untracked {
  [[ $(git status 2> /dev/null | grep "Untracked files") ]] && echo "?"
}
function parse_changed_uncommited {
  [[ $(git status 2> /dev/null | grep "Changes to be committed") ]] && echo "+"
}
function parse_changed {
  [[ $(git status 2> /dev/null | grep "Changed but not updated") ]] && echo "!"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}

function proml {
  local       BLACK="\[\033[0;30m\]"
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local        CYAN="\[\033[0;36m\]"
  local  LIGHT_CYAN="\[\033[1;36m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local       RESET="\[\033[0m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac
 
PS1="${TITLEBAR}\
$BLUE[$RED\u:\w$GREEN\$(parse_git_branch)$RED\$(parse_changed)\$(parse_untracked)$GREEN\$(parse_changed_uncommited)$BLUE]\
$GREEN\$$RESET "
PS2='> '
PS4='+ '
}
proml
