#!/bin/bash

preventSubshell(){
  if [[ $_ != $0 ]]
  then
    echo "Script is being sourced"
  else
    echo "Script is a subshell - please run the script by invoking the '. 06_install_miniconda.sh' command";
    exit 1;
  fi
}

preventSubshell

mkdir -p $HOME/.dlcache
cd $HOME/.dlcache
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh &&\
bash Miniconda2-latest-Linux-x86_64.sh 
cd -
