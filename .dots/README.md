#dots

This setup keeps your dotfiles in the home directory (as opposed to symlinking them).

## you should know

If you're like me and don't like cloning others' dotfiles, then you should [roll your own](#roll-your-own) and maintain them yourself!!!

This is especially useful if you are just starting to maintain your dotfiles as you can selectively & non-destructively add files to your own repo. 

Otherwise, just [replicate mine](#replicate-me) 

## roll your own 

It's easy, simply initialize your repo in a separate directory, create some aliases and you're set.

    git init --bare $HOME/.dots

You should probably put these aliases in your ```.bashrc``` (or wherever you do) for persistence.
    
    # git commands inherit from .gitconfig so customize accordingly
    alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME '
    alias dotss='dots commit -a -S -v '
    
    # dont show untracked files (which would include your entire home directory)
    dots config status.showUntrackedFiles no
    
    # add your remote repo
    dots remote add <name> <url>

    # so now you can...
    dots add .bashrc
    dotss "Add bashrc"
    dots push       

Congrats, you're maintaining your own dotfiles! 
Take a look at my [dotset](https://github.com/esurdam/dots/tree/master/.dotset) for goodies. 

## replicate me

Replicating me will replace your $HOME dotfiles and give you a repo to begin maintaining yourself.

We will do three things:

1. clone the repo declaring a ```--seperate-git-dir=$HOME/.dots``` into tmp directory ```dots-tmp```
2. rsync the dotfiles to your $HOME directory
3. delete the tmp directory ```dots-tmp```

Be careful as this will probably overwrite anything in your $HOME that conflicts 

    git clone --separate-git-dir=$HOME/.dots https://github.com/esurdam/dots.git dots-tmp
    rsync --recursive --verbose --exclude '.git' dots-tmp/ $HOME/
    rm --recursive dots-tmp 
    
Open a new terminal to use the new goodies, firstly adding your own origin.

    dots remote add <name> <url>
            
    # now you can...    
    dots add .bashrc
    dotss "Add bashrc"
    dots push
    
    # edit your aliases
    xalias  
    
## acknowledgements

dotfiles themselves were inspired by [jfrazelle's](https://github.com/jfrazelle/dotfiles)