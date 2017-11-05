#!/bin/bash

sudo apt-get update && sudo apt-get install git -y
mkdir -p $HOME/code/
cd $HOME/code
git clone https://github.com/OryxGazella/dotfiles
read -p 'What is your name? ' username
read -p 'What is your email address? ' email
git config --global user.email "$email"
git config --global user.name "$username"
cd $HOME/code/dotfiles
git checkout elementary
echo "You're good to go. You may want to read and look at the scripts starting from 01"
