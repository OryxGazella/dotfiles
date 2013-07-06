#homebrew told me to do this when I 
#installed git bash completion from the cli
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
