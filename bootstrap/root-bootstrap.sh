#!/bin/bash -x

# Update repositories and existing packages
apt-get update
apt-get dist-upgrade

# Install Gnome 3
sudo apt-get -y install ubuntu-gnome-desktop

# Install Open JDK 8
apt-get -y install openjdk-8-jdk

# Install VIM
apt-get -y install vim

# Install GNU Stow
apt-get -y install stow

# Install Git
apt-get -y install git

# Install tmux
apt-get -y install tmux

# Install zsh and set it as the default shell for the vagrant user
apt-get -y install zsh
chsh -s `which zsh` vagrant

# Install Dependencies for YouCompleteMe
apt-get -y install build-essential cmake
apt-get -y install python-dev python3-dev
