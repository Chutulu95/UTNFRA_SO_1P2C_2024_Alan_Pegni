#!/bin/bash

DISCO="/dev/sdb"

echo
echo 'Creando particiones'
echo


sudo fdisk $DISCO <<EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e
4


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF


sudo mkfs.ext4 -F /dev/sdb1
sudo mkfs.ext4 -F /dev/sdb2
sudo mkfs.ext4 -F /dev/sdb3
sudo mkfs.ext4 -F /dev/sdb4
sudo mkfs.ext4 -F /dev/sdb5
sudo mkfs.ext4 -F /dev/sdb6
sudo mkfs.ext4 -F /dev/sdb7
sudo mkfs.ext4 -F /dev/sdb8
sudo mkfs.ext4 -F /dev/sdb9
sudo mkfs.ext4 -F /dev/sdb10
sudo mkfs.ext4 -F /dev/sb11


echo "/dev/sdb1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb4 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb5 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb6 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb7 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb8 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb9 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb10 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a


