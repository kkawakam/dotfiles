# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/ubuntu-16.04"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Name of the Virtual Machine
    vb.name = "Ubuntu Development Machine"
  
    # Customize the amount of memory on the VM:
    vb.memory = "4096"

    # Set the VRAM
    vb.customize ["modifyvm", :id, "--vram", "64"]
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision :shell, path: "bootstrap/root-bootstrap.sh"
  config.vm.provision :shell, path: "bootstrap/root-install-intellij.sh"
  config.vm.provision :shell, path: "bootstrap/root-install-android-studio.sh"
  config.vm.provision :shell, path: "bootstrap/user-bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "bootstrap/root-reboot.sh"
end
