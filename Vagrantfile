Vagrant.configure("2") do |config|
#config.vm.box="ubuntu/bionic64"
config.vm.box="bento/ubuntu-18.04"
script=<<-SCRIPT
set -x
if [[ ! -e /etc/.provisioned ]]; then
if [[ ! -e /vagrant/id_rsa ]]; then
        ssh-keygen -t rsa -f /vagrant/id_rsa -N ""
fi
install -m 600 -o vagrant -g vagrant /vagrant/id_rsa /home/vagrant/.ssh/
      (echo; cat /vagrant/id_rsa.pub) >> /home/vagrant/.ssh/authorized_keys
    touch /etc/.provisioned
fi
SCRIPT
config.vm.define "node1" do |node1|
config.vm.hostname="node1"

node1.vm.network "private_network", ip: "192.168.90.101"
#config.vm.provision :shell, :path =>".provision/sshkey.sh"

node1.vm.provision "shell", inline: script

node1.vm.provision :shell, :path =>".provision/master.sh"
end

config.vm.define "node2" do |node2|
node2.vm.hostname="node2"
node2.vm.network "private_network", ip: "192.168.90.102"
node2.vm.provision "shell", inline: script

node2.vm.provision :shell, :path =>".provision/slave.sh"
end
config.vm.define "node3" do |node3|
node3.vm.hostname="node3"
node3.vm.network "private_network", ip: "192.168.90.103"
node3.vm.provision "shell", inline: script

node3.vm.provision :shell, :path =>".provision/slave2.sh"
end


end
