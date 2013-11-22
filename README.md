##Install Base Vim Configuration 
No ycm or javascript support

1. Clone repo into directory of your choice
1. Sym link the vimrc in the repo to ~/.vimrc
1. Use vundle to install all vim plugins

```
git clone https://github.com/kkawakam/dotfiles.git 
ln -s dotfiles/vim/vimrc ~/.vimrc
vim +BundleInstall
```

##Install YouCompleteMe
[Refer to the Documentation...](https://github.com/Valloric/YouCompleteMe)

##Install Javascript Linter and Tern
Make sure YouCompleteMe is installed

1. Install [Node.js](http://nodejs.org/)
1. Install JShint using npm

```
npm install -g jshint
```

