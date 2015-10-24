if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
alias serve="python -m SimpleHTTPServer"
alias l='ls -CF'
alias ll='ls -alF'