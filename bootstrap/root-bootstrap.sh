#!/bin/bash -x

# Update repositories and existing packages
apt-get update
apt-get dist-upgrade

# Install Lubuntu Desktop
sudo apt-get -y install lubuntu-desktop

# Install Gnome Terminal and Configure Desktop Entry
sudo apt-get -y install gnome-terminal 
cat > /usr/share/applications/gnome-terminal.desktop <<EOL
[Desktop Entry]
Name=Gnome Terminal
Comment=Use the command line
Keywords=shell;prompt;command;commandline;cmd;
TryExec=gnome-terminal
Exec=gnome-terminal
Icon=utilities-terminal
Type=Application
X-GNOME-DocPath=gnome-terminal/index.html
X-GNOME-Bugzilla-Bugzilla=GNOME
X-GNOME-Bugzilla-Product=gnome-terminal
X-GNOME-Bugzilla-Component=BugBuddyBugs
X-GNOME-Bugzilla-Version=3.18.3
Categories=GNOME;GTK;System;TerminalEmulator;
StartupNotify=true
X-GNOME-SingleWindow=false
#OnlyShowIn=GNOME;Unity;
Actions=New
X-Ubuntu-Gettext-Domain=gnome-terminal

[Desktop Action New]
Name=New Gnome Terminal
Exec=gnome-terminal
#OnlyShowIn=Unity
EOL

# Install Synapse App Launcher
sudo apt-get -y install synapse

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

# Install dconf for Solarized for Gnome Terminal
apt-get -y install dconf-cli

# Remove byobu
apt-get -y remove --auto-remove byobu
apt-get -y purge --auto-remove byobu

# Install Dependencies for Android Studio
apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Install unzip
apt-get install unzip

# Install tig
apt-get install tig

# Install Visual Studio Code
wget -O /tmp/visual_studio_code.deb https://az764295.vo.msecnd.net/stable/41abd21afdf7424c89319ee7cb0445cc6f376959/code_1.15.1-1502903936_amd64.deb 
apt-get install /tmp/visual_studio_code.deb

# Install Gnome Keyring
sudo apt-get install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring
