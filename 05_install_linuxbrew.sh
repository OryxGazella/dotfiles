#!/bin/bash

preventSubshell(){
  if [[ $_ != $0 ]]
  then
    echo "Script is being sourced"
  else
    echo "Script is a subshell - please run the script by invoking the '. 05_install_linuxbrew.sh' command";
    exit 1;
  fi
}

preventSubshell
rm $HOME/.profile
ln -s $PWD/profile $HOME/.profile && source $HOME/.profile

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo
echo "Ready to go, run brew doctor to get started"
