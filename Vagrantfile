# -*- mode: ruby -*-
# vi: set ft=ruby sw=2 st=2 et :
Vagrant.configure('2') do |config|
#------------------ Serveur Master Jenkins
    config.vm.box_check_update = false
                config.vm.define 'master' do |machine|
				    machine.vm.box = 'bento/ubuntu-18.04'
                    machine.vm.hostname = 'master'
					
                    machine.vm.network :private_network, ip: "192.168.1.10"
                    machine.vm.provider 'virtualbox' do |vb|
						vb.memory = 6048
						vb.cpus = 4
						
				    end
					
	            config.vm.provision 'shell', path: 'install.sh'
config.vm.provision "shell", inline: <<-SHELL
echo "#nameserver 10.0.2.3
nameserver 8.8.8.8
nameserver 8.8.4.4" > /etc/resolv.conf
SHELL
                end
end