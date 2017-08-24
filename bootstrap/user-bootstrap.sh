#!/bin/bash -x

# Create a Repos directory for Git Repos
mkdir Repos

# Install all of the dotfiles
cd ~
git clone https://github.com/kkawakam/dotfiles
cd dotfiles
stow tmux
stow vim
stow zsh

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
rustup install stable
rustup default stable
mkdir -p ~/.zfunc
rustup completions zsh > ~/.zfunc/_rustup

# Clone Solarized for Gnome Terminal
# User must installed this after they log in for the first time
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git  ~/Repos/gnome-terminal-colors-solarized
cd ~/Repos/gnome-terminal-colors-solarized

# Install missing powerline fonts
mkdir ~/Downloads && cd ~/Downloads
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d #if directory doesn't exists
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Set configuration for synapse app launcher
mkdir -p ~/.config/synapse
cat > ~/.config/synapse/config.json <<EOL
{
  "ui" : {
    "shortcuts" : {
      "activate" : "<Super>space",
      "execute" : "Return",
      "execute-without-hide" : "<Shift>Return",
      "delete-char" : "BackSpace",
      "delete-word" : "<Control>BackSpace",
      "alternative-delete-char" : "Delete",
      "next-match" : "Down",
      "prev-match" : "Up",
      "first-match" : "Home",
      "last-match" : "End",
      "next-match-page" : "Page_Down",
      "prev-match-page" : "Page_Up",
      "next-category" : "Right",
      "prev-category" : "Left",
      "next-search-type" : "Tab",
      "prev-search-type" : "<Shift>ISO_Left_Tab",
      "cancel" : "Escape",
      "paste" : "<Control>v",
      "alt-paste" : "<Shift>Insert",
      "exit" : "<Control>q"
    },
    "global" : {
      "ui-type" : "virgilio"
    }
  }
}
EOL
mkdir -p ~/.config/autostart
ln -s /usr/share/applications/synapse.desktop ~/.config/autostart/synapse.desktop