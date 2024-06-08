#!/bin/bash
virt-install --name rocky9 \
--ram 2048 \
--disk path=/home/john/SSD/VMs/Rocky.img,size=20 \
--vcpus 1 \
--os-variant rocky9 \
--network bridge=virbr0 \
--graphics none \
--console pty,target_type=serial \
--location /home/john/SSD/ISOs/Rocky-9.4-x86_64-minimal.iso \
--extra-args 'console=ttyS0,115200n8 serial'
