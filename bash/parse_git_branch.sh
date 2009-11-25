function parse_git_branch {
  BRANCH=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
  [[ $BRANCH ]] && echo "[$BRANCH]"
}

