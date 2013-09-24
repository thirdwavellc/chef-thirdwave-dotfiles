# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "opscode-precise64-provisionerless"

  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

	config.omnibus.chef_version = :latest

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "thirdwave-dotfiles"

		chef.json = {
			:thirdwave_dotfiles => {
				:vim => true,
				:tmux => true,
				:tmux_sessions => [
					{
						:name => "test",
						:windows => [
							{
								:name => "hosts",
								:command => "vim /etc/hosts"
							},
							{
								:name => "interfaces",
								:command => "vim /etc/network/interfaces"
							}
						]
					},
					{
						:name => "another",
						:windows => [
							{
								:name => "window1"
							}
						]
					}
				]
			},
			:tmux => {
				:install_method => "package"
			}
		}
  end
end
