#!/bin/bash -x

# Update repositories and existing packages
apt -y update
apt -y upgrade

# Install Ubuntu Desktop
apt -y install ubuntu-desktop

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
chsh -s `which zsh` vagrant

# Install Dependencies for various C/C++ projects
apt -y install build-essential cmake
apt -y install python-dev python3-dev

# Install dconf for Solarized for Gnome Terminal
apt -y install dconf-cli

# Install Dependencies for Android Studio
apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Install unzip
apt -y install unzip

# Install tig
apt -y install tig

# Install Gnome Keyring
apt -y install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
make
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

# Install tree
apt -y install tree

# Install golang
cd ~
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
rm go1.21.0.linux-amd64.tar.gz

# Install Albert
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
apt -y update
apt -y install albert
