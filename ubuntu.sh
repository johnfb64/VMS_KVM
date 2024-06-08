#!/bin/bash
virt-install --name ubuntu24 \
--ram 2048 \
--disk path=/home/john/SSD/VMs/Ubuntu24.img,size=20 \
--vcpus 1 \
--os-variant ubuntu24.04 \
--network bridge=virbr0 \
--graphics none \
--console pty,target_type=serial \
--location /home/john/SSD/ISOs/ubuntu-24.04-live-server-amd64.iso,kernel=casper/vmlinuz,initrd=casper/initrd \
--extra-args 'console=ttyS0,115200n8 serial'

#kernel=casper/vmlinuz,initrd=casper/initrd
