export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:pony:pony *";

#bash completion for pass
TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
  if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
    source /usr/local/etc/bash_completion.d/password-store
  fi

export GOPATH=$HOME/.go

#RVM goodies
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Example aliases
source ~/.dotset/aliases

#source functions
source ~/.dotset/functions
