#!/bin/bash

read -p "Your email address? " email
ssh-keygen -b 2048 -C "$email" -t rsa
sudo apt-get install -y xsel && cat ~/.ssh/id_rsa.pub | xsel -ib
echo
echo "Okay, I've copied your RSA public key to the clipoard, next step is to autorise it on github"
git remote set-url origin git@github.com:OryxGazella/dotfiles.git
