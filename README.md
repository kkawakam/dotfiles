##Installation Instructions

### Prerequisite
* gnu stow
* git
* tmux
* Zsh
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Vim
* [rustup](https://www.rustup.rs/)

### Setup dotfiles
Run the following commands
```
$ cd ~
$ git clone https://github.com/kkawakam/dotfiles.git
$ cd dotfiles
$ stow tmux
$ stow vim
$ stow zsh
```

### Configuring Vim
1. Install [Vundle](https://github.com/VundleVim/Vundle.vim.git)
2. Install [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
   * with Clang completer
   * with Racer completer

