
# Spin a New VM with Default Network

sudo virt-install \
--virt-type=kvm \
--name centos7 \
--ram 6144 \
--vcpus=8 \
--os-variant=rhel7 \
--hvm \
--cdrom=/RootPartitions/CentOS-7-x86_64-DVD-1810.iso \
--network network=default,model=virtio \
--graphics vnc \
--disk path=/RootPartitions/centos7-0.1.img,size=30,bus=virtio


# Spin a New VM with Bridge Network

sudo virt-install \
--virt-type=kvm \
--name centos7 \
--ram 6144 \
--vcpus=8 \
--os-variant=rhel7 \
--hvm \
--cdrom=/RootPartitions/CentOS-7-x86_64-DVD-1810.iso \
--network bridge=br0,model=virtio \
--graphics vnc \
--disk path=/RootPartitions/centos7.img,size=30,bus=virtio
