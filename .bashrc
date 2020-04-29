#
# Aliases
#

alias grep="grep --color=auto"
alias ls="ls --color=auto"

#
# Environment Variables
#

export EDITOR=vim
export MANPAGER=most

#
# Bash Variables
#

HISTCONTROL=ignoreboth
PROMPT_COMMAND=setPrompt

#
# Functions
#

cd() {
  builtin cd "$@" && ls;
}

setPrompt() {
  local EXIT_STATUS="$?"
  declare -r GREEN="\e[0;32m"
  declare -r RED="\e[0;31m"
  declare -r RESET="\e[0m"

  PS1=""
  PS1+=`dirs`

  if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" == "true" ]; then
    declare -r BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD)"
    declare -r HAS_CHANGES="$(git status --porcelain --untracked-files=no)"
    if [[ $HAS_CHANGES ]]; then
      PS1+="$RED"
    else
      PS1+="$GREEN"
    fi
    PS1+=" ($BRANCH_NAME)$RESET"
  fi

  if [ "$EXIT_STATUS" == "0" ]; then
      PS1+="$GREEN"
  else
      PS1+="$RED"
  fi

  PS1+=" > "
  PS1+="$RESET"
}
