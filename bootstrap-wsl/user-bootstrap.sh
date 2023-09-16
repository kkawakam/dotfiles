#!/bin/bash -x

# Create a Repos directory for Git Repos
mkdir ~/Repos

# Install all of the dotfiles
cd ~
git clone https://github.com/kkawakam/dotfiles
cd dotfiles
stow tmux
stow vim
stow zsh
cd ~

# Install Vundle for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -E -s -c "source ~/.vimrc" -c PluginInstall -c qa

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
rm ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

# Install Rust Stable and Zsh completion
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustup install stable
rustup default stable
mkdir -p ~/.zfunc
rustup completions zsh > ~/.zfunc/_rustup

# Install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
