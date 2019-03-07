# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/bionic64' # 18.04
  config.vm.hostname = 'bionic'
  config.vm.box_check_update = true

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.provision :shell, path: 'install.sh', keep_color: true
  config.vm.synced_folder '.', '/vagrant', type: 'virtualbox'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
end
