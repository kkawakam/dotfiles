## Prerequisite
Install the following software:
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* Install Vagrant Plugins
  * ```vagrant plugin install vagrant-disksize```

## Provisioning a new VM
Run the following from the command line:

```zsh
$ git clone https://github.com/kkawakam/dotfiles.git
$ cd dotfiles
$ vagrant up
```

## Post-Provisioning Setup
Login into the VM using the standard vagrant username and password and run the following on the command line

```zsh
$ cd ~/Repos/gnome-terminal-colors-solarized
$ ./install.sh
```
