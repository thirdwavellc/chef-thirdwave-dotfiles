# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "opscode-precise64-provisionerless"

  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

	config.omnibus.chef_version = :latest

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "thirdwave-dotfiles"
  end
end
