## Prerequisite
Install the following software:
* [VirtualBox](https://www.virtualbox.org/)
* [Ubuntu Desktop](https://ubuntu.com/desktop)

## Steps
1. Load up the Ubuntu Desktop .iso into VirtualBox and create a `main` user
2. Install guest additions
3. Install `git`
   * [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=linux)
   * [Setting your commit email address](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address)
4. Clone this repo
5. Run `root-bootstrap.sh` as root
6. Run `root-install-jetbrains-toolbox.sh` as root
7. Run `user-bootstrap.sh` as user

### Appendix
Old instructions, removed usage of vagrant due to flaky issues that occur during provisioning.

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
