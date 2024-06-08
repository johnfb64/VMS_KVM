#!/bin/bash
virt-install --name rhel9 \
--ram 2048 \
--disk path=/home/john/SSD/VMs/RHEL9.img,size=20 \
--vcpus 1 \
--os-variant rhel9.4 \
--network bridge=virbr0 \
--graphics none \
--console pty,target_type=serial \
--location /home/john/SSD/ISOs/rhel-9.4-x86_64-dvd.iso \
--extra-args 'console=ttyS0,115200n8 serial'
