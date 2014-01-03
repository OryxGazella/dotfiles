# My dotfiles #

* tmux configuration
* global git ignore
* .profile
* .bash_profile

``` bash
$ ln -s ~/<path_to_local_repo>/bash_profile ~/.bash_profile
$ ln -s ~/<path_to_local_repo>/profile ~/.profile
$ ln -s ~/<path_to_local_repo>/tmux.conf ~/.tmux.conf
$ ln -s ~/<path_to_local_repo>/cvsignore ~/.cvsignore
$ git config --global core.excludesfile '~/.cvsignore' 
```
