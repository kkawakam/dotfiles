#!/bin/bash -x

# Update repositories and existing packages
apt -y update
apt -y upgrade

# Install VIM
apt -y install vim

# Install GNU Stow
apt -y install stow

# Install Git
apt -y install git

# Install tmux
apt -y install tmux

# Install zsh and set it as the default shell for the vagrant user
apt -y install zsh
chsh -s `which zsh` main

# Install Dependencies for various C/C++ projects
apt -y install build-essential cmake
apt -y install python3-dev

# Install dconf for Solarized for Gnome Terminal
apt -y install dconf-cli

# Install unzip
apt -y install unzip zip

# Install tig
apt -y install tig

# Install tree
apt -y install tree

# Install golang
cd ~
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
rm go1.21.0.linux-amd64.tar.gz
