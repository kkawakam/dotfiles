#!/bin/bash -x

# Update repositories and existing packages
apt-get -y update
apt-get -y dist-upgrade

# Install Ubuntu Desktop
apt-get -y install ubuntu-desktop

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

# Install Dependencies for various C/C++ projects
apt-get -y install build-essential cmake
apt-get -y install python-dev python3-dev

# Install dconf for Solarized for Gnome Terminal
apt-get -y install dconf-cli

# Install Dependencies for Android Studio
apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Install unzip
apt-get install unzip

# Install tig
apt-get install tig

# Install Gnome Keyring
apt-get install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
make
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

# Install tree
apt-get install tree

# Install golang
cd ~
wget https://golang.org/dl/go1.15.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
rm go1.15.3.linux-amd64.tar.gz

# Install Albert
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt -y update
sudo apt -y install albert