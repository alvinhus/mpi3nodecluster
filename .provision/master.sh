#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get -y install openmpi-bin libopenmpi-dev nfs-kernel-server nfs-common
sudo sh -c "echo '192.168.90.101 node1' >>/etc/hosts"
sudo sh -c "echo '192.168.90.102 node2' >>/etc/hosts"
sudo sh -c "echo '192.168.90.103 node3' >>/etc/hosts"
sudo mkdir /home/vagrant/dijeljeni
sudo chown vagrant -R /home/vagrant/dijeljeni
sudo sh -c " echo '/home/vagrant/dijeljeni 192.168.90.0/24(rw,sync,no_root_squash,no_subtree_check)'>>/etc/exports"
sudo exportfs -a
sudo sh -c "echo 'StrictHostKeyChecking no' >>/etc/ssh/ssh_config"
sudo sh -c "echo 'UserKnownHostsFile=/dev/null'>>/etc/ssh/ssh_config"
 sh -c "echo 'node1 slots=10'>>/home/vagrant/dijeljeni/hostovi"
 sh -c "echo 'node2 slots=10'>>/home/vagrant/dijeljeni/hostovi"
 sh -c "echo 'node3 slots=10'>>/home/vagrant/dijeljeni/hostovi"