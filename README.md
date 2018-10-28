# Vagrant file that initialize 3 node mpi cluster with 10 slots per node on bento/ubuntu-18.04 vagrant image

How to use 
1. $ vagrant up
2. $ vagrant ssh node1
4. $cd dijeljeno
5. when positioned in /home/vagrant/dijeljeno put your mpi C source code
6. compile the source code with mpicc
7. run your executable with "mpiexec -np desired_number_up_to_30 --hostfile hostovi  executable_file_name
8. when you complete with your work type exit
9. in your host choose between "vagrant destroy", "vagrant halt" and "vagrant suspend"
