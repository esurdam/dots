export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:pony:pony *";

export GOPATH=$HOME/.go

#RVM goodies
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gpg="gpg2"
alias edinit="atom ~/owncloud/Devlo/dev-init"
alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias dotss="dots commit -a -S -m "