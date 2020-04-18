#!/bin/bash

# Added installation for vbox virtualization packages
sudo apt install dkms build-essential linux-headers-$(uname -r) -y

# Mount the disk image
cd /tmp
mkdir /tmp/isomount
sudo mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/isomount

# Install the drivers
sudo /tmp/isomount/VBoxLinuxAdditions.run

# Cleanup
sudo umount /tmp/isomount
rm /tmp/isomount /home/vagrant/VBoxGuestAdditions.iso -r
