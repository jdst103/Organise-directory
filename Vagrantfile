# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.150"
  config.hostsupdater.aliases = ["development.local"]
  config.vm.synced_folder "environment", "/home/ubuntu/environment"
  config.vm.synced_folder "scripts", "/home/ubuntu/scripts"
  config.vm.provision "shell", path: "environment/provision.sh", privileged: false


config.vm.provider "virtualbox" do |v|
   v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
   v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
 end
end
