#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get -y install openmpi-bin libopenmpi-dev nfs-common
sudo sh -c "echo '192.168.90.101 node1' >>/etc/hosts"
sudo sh -c "echo '192.168.90.102 node2' >>/etc/hosts"
sudo sh -c "echo '192.168.90.103 node3' >>/etc/hosts"
sudo mkdir /home/vagrant/dijeljeni
sudo chown vagrant -R /home/vagrant/dijeljeni
sudo mount -t nfs node1:/home/vagrant/dijeljeni /home/vagrant/dijeljeni
sudo sh -c "echo 'StrictHostKeyChecking no' >>/etc/ssh/ssh_config"
sudo sh -c "echo 'UserKnownHostsFile=/dev/null'>>/etc/ssh/ssh_config"