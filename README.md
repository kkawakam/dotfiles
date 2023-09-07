## Prerequisite
Install the following software:
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/downloads.html)

## Provisioning a new VM
Run the following from the command line:

```zsh
$ git clone https://github.com/kkawakam/dotfiles.git
$ cd dotfiles
$ vagrant up --provider virtualbox
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
