# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.provider "vmware_player" do |v|
    v.gui = true
    v.vmx["numvcpus"] = "7"
    v.vmx["memsize"] = "32768"
    v.vmx["displayName"] = "Ubuntu Development Machine"
  end

  config.vm.provision :shell, path: "bootstrap/root-bootstrap.sh"
  config.vm.provision :shell, path: "bootstrap/root-install-jetbrains-toolbox.sh"
  config.vm.provision :shell, path: "bootstrap/user-bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "bootstrap/root-reboot.sh"
end
