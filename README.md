## Prerequisite
Install the following software:
* [VMWare Player](https://www.vmware.com/products/workstation-player.html)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* Install Vagrant Plugins
   * `vagrant plugin install vagrant-vmware-desktop`

## Provisioning a new VM
Run the following from the command line:

```zsh
$ git clone https://github.com/kkawakam/dotfiles.git
$ cd dotfiles
$ vagrant up --provider vmware_player
```

## Post-Provisioning Setup
Login into the VM using the standard vagrant username and password and run the following on the command line

Install Solarized
```zsh
$ cd ~/Repos/gnome-terminal-colors-solarized
$ ./install.sh
```

Change Password
```zsh
$ passwd
```

Run Albert and configure hotkey as `Ctrl+Space`

Run Jetbrain ToolBox and Install Intellij (and any other IDE)
