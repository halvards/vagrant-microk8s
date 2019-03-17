# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'
  config.vm.box_check_update = false
  config.vm.host_name = 'microk8s.vagrantup.com'
  config.vm.network 'forwarded_port', guest: 22,    host: 2166,  id: 'ssh',       host_ip: '127.0.0.1', auto_correct: true
  config.vm.network 'forwarded_port', guest: 80,    host: 8000,  id: 'ingress',   host_ip: '127.0.0.1', auto_correct: true
  config.vm.network 'forwarded_port', guest: 8080,  host: 8080,  id: 'apiserver', host_ip: '127.0.0.1', auto_correct: true
  config.vm.network 'forwarded_port', guest: 32000, host: 32000, id: 'registry',  host_ip: '127.0.0.1', auto_correct: true
  config.vm.provider 'virtualbox' do |vb|
    vb.cpus = 1
    vb.memory = 2048
    vb.name = 'microk8s'
  end
  config.vm.provision 'shell', path: 'provision.sh'
end
