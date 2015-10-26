if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
alias serve="python -m SimpleHTTPServer"
alias l='ls -CF'
alias ll='ls -alF'
export GROOVY_HOME=/usr/local/opt/groovy/libexec

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile
