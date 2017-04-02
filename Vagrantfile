# -*- mode: ruby -*-
# vi: set ft=ruby :

# http://docs.vagrantup.com/v2/
Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'
  config.vm.hostname = 'sauce'
  config.ssh.forward_agent = true

  config.vm.network 'forwarded_port', guest: 80, host: 8080

  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :box
    config.cache.synced_folder_opts = {
      owner: '_apt',
      group: '_apt',
      mount_options: %w(dmode=777 fmode=666)
    }
  end

  config.vm.provider 'virtualbox' do |provider, override|
    # provider.gui = true
    provider.name = 'sauce'
    provider.customize ['modifyvm', :id, '--uartmode1', 'disconnected']
  end

  config.vm.provision :shell, path: 'scripts/vagrant'
end
