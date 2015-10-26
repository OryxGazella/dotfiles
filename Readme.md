# My dotfiles #

* tmux configuration
* global git ignore
* .bash_profile

``` bash
$ ln -s $PWD/bash_profile ~/.bash_profile
$ ln -s $PWD/tmux.conf ~/.tmux.conf
$ ln -s $PWD/cvsignore ~/.cvsignore
$ ln -s $PWD/profile ~/.profile
$ git config --global core.excludesfile '~/.cvsignore' 
```
