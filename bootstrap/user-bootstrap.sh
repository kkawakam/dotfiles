#!/bin/bash -x

# Install all of the dotfiles
cd ~
git clone https://github.com/kkawakam/dotfiles
cd dotfiles
stow tmux
stow vim

# Install Vundle for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -E -s -c "source ~/.vimrc" -c PluginInstall -c qa

# Install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --racer-completer

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
rm ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

# Install Rust Stable and Zsh completion
cd ~
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
rustup completions zsh > ~/.zfunc/_rustup
rustup install stable
rustup default stable