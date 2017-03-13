#!/bin/bash

#expot docker info at terminal login
#eval "$(docker-machine env default)"

#bash completion for pass
TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
  if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
    source /usr/local/etc/bash_completion.d/password-store
  fi

# bash completion for aws cli
#source /usr/local/bin/aws_completer

# Exports
source ~/.dotset/exports

# Example aliases
source ~/.dotset/aliases

#source functions
source ~/.dotset/functions

#source docker apps
source ~/.dotset/dockerfunc

#source secrets
source ~/.dotset/secrets
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

export PATH="$HOME/.cargo/bin:$PATH"
