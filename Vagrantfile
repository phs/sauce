# -*- mode: ruby -*-
# vi: set ft=ruby :

begin
  ENV['VAGRANT_DEFAULT_PROVIDER'] ||= File.read('.vagrant/provider').strip
rescue Errno::ENOENT
end

# http://docs.vagrantup.com/v2/
Vagrant.configure('2') do |config|
  config.vm.box = 'precise64'
  config.vm.hostname = 'sauce'
  config.ssh.forward_agent = true

  config.vm.network 'forwarded_port', guest: 80, host: 8080

  %w[vmware_fusion vmware_workstation].each do |vmware|
    config.vm.provider vmware do |provider, override|
      # provider.gui = true
      provider.name = 'sauce'
      override.vm.box_url = 'http://files.vagrantup.com/precise64_vmware.box'
    end
  end

  config.vm.provider 'virtualbox' do |provider, override|
    # provider.gui = true
    provider.name = 'sauce'
    override.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  end

  config.vm.provision :shell, path: 'scripts/vagrant'
end
