# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vagrant.plugins = ["vagrant-vbguest", "vagrant-disksize"]
  config.disksize.size = '100GB'

  # virtualbox version 7.0.8+ freezes when it tries to auto-update vb guest additions
  config.vbguest.auto_update = false 
  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.cpus = "4"
    v.memory = "32768"
    v.name = "Ubuntu Development Machine"
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
    v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  config.vm.provision :shell, path: "bootstrap/root-bootstrap.sh"
  config.vm.provision :shell, path: "bootstrap/root-install-jetbrains-toolbox.sh"
  config.vm.provision :shell, path: "bootstrap/user-bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "bootstrap/root-reboot.sh"
end
