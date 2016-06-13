#dots

##Setup:

    git init --bare $HOME/.my-dotfiles

##GPG sign and work:

    alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
    alias dotss="dots commit -a -S -m "
    dots config status.showUntrackedFiles no

##Examples:

    dots add .zshrc
    dotss "Add zshrc"
    dots push

##Replicate

    git clone --separate-git-dir=$HOME/.dots https://github.com/esurdam/dots.git dots-tmp
    rsync --recursive --verbose --exclude '.git' dots-tmp/ $HOME/
    rm --recursive dots-tmp
