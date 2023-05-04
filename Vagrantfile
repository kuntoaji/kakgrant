# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure('2') do |config|
  # ubuntu/jammy64 only support x86_64
  # config.vm.box      = 'ubuntu/jammy64' # 22.04

  config.vm.box = 'perk/ubuntu-2204-arm64' # Ubuntu 22.04
  config.vm.hostname = 'jammy64'
  config.vm.box_check_update = false

  # uncomment to use network port forwarding
  # config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: 'install.sh', keep_color: true

  # temporary workaround for synced_folder in Apple Silicon
  # need to run `vagrant rsync-auto`
  config.vm.synced_folder ".", "/vagrant", type: "rsync"

  # Uncomment to enable synced folder using SMB, currently not working
  # config.vm.synced_folder ".", "/vagrant", type: "smb",
  #   smb_username: 'vagrant', smb_password: 'vagrant'

  # Using qemu for virtualization, currently virtualbox is not working
  config.vm.provider 'qemu' do |qe|
    qe.memory = '4G'
  end
end
