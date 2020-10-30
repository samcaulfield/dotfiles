#
# Sources
#

source /etc/profile.d/bash_completion.sh

#
# Aliases
#

alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias termtitle="set_terminal_title.bash"

cd() {
  builtin cd "$@" && ls;
}

git() {
  if [[ $@ == "add" ]]; then
    command git add --verbose
  elif [[ $@ == "clone" ]]; then
    command git clone --recursive
  else
    command git "$@"
  fi
}

#
# Environment Variables
#

export EDITOR=vim
export MANPAGER=most

# Exiting shells append to the history file instead of overwriting.
shopt -s histappend

#
# Bash variables and settings
#

# Don't add duplicate commands and commands beginning with spaces to the history.
HISTCONTROL=ignoreboth

HISTSIZE=1000
HISTFILESIZE=1000

# Automatically fix minor spelling errors when issuing the `cd` command.
shopt -s cdspell

PROMPT_COMMAND=set_prompt

#
# Functions
#

set_prompt() {
  local EXIT_STATUS="$?"
  declare -r GREEN="\e[0;32m"
  declare -r RED="\e[0;31m"
  declare -r RESET_COLOUR="\e[0m"

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
    PS1+=" ($BRANCH_NAME)$RESET_COLOUR"
  fi

  if [ "$EXIT_STATUS" == "0" ]; then
      PS1+="$GREEN"
  else
      PS1+="$RED"
  fi

  PS1+=" > "
  PS1+="$RESET_COLOUR"
}

