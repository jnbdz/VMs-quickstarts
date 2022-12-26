# KVM | VMs Quickstarts
- Kernel-based Virtual Machine
- KVM can only be used on a processor with hardware virtualisation extensions, such as [Intel-VT](https://www.intel.com/content/www/us/en/virtualization/virtualization-technology/intel-virtualization-technology.html) or [AMD-V](https://www.amd.com/en/technologies/virtualization-solutions).
- VMs runs as a separate Linux process under systemd
- Native to Linux Kernel
- Benefits: 
    - **Performance** - Because it is a hypervisor type-1 so it is closer to the hardware compared to a type-2
        - There is some dispute of how much it is a type-1 compared to Xen. Some argue it is part type-1 and type-2
    - **Scalability** - Auto scales to respond to more load after the number of VMs goes up
        - Enables clustering of thousands of nodes (*laying the foundations for cloud infrastructure implementation* ???)
    - **Security** - It benefits from the biggest OS community collaboration and continuous security patches
        - It is still argued that it has more security holes than Xen
    - **Maturity** - It was created in **2006**. It is still in active development. ~1000 devs have worked on it.
    - **Cost-efficiency** - Zero costs out of the box. For enterprise support: [UA-I (Ubuntu Advantage for Infrastructure)](https://ubuntu.com/advantage).
- OpenStack - Good support out of the box

## Install
> The instructions are taken from: https://ubuntu.com/blog/kvm-hyphervisor
> So they might be different for other Linux distros.
### Packages
```bash
$ sudo apt -y install bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu qemu-kvm
```

### Check virtualisation capabilities
```bash
kvm-ok
```
Output if all good: 
```
INFO: /dev/kvm exists
KVM acceleration can be used
```

### Launch a VM
```bash
$ sudo virt-install --name ubuntu-guest --os-variant ubuntu20.04 --vcpus 2 --ram 2048 --location http://ftp.ubuntu.com/ubuntu/dists/focal/main/installer-amd64/ --network bridge=virbr0,model=virtio --graphics none --extra-args='console=ttyS0,115200n8 serial'
```

It should then open a interactive console that you can use to manually install your VMs.

## Resources
- [KVM hypervisor: a beginners’ guide | Blog | Ubuntu](https://ubuntu.com/blog/kvm-hyphervisor)
### Virtualisation management software
Make it easier to manage your VMs.
- [Virtual Machine Manager](https://virt-manager.org/) - Desktop application
- [Multipass](https://multipass.run/?_ga=2.7647090.1326781762.1672093966-873143914.1671920538) - Desktop application
- [OpenStack](https://ubuntu.com/openstack/what-is-openstack) - Web interface from RedHat (text configuration file CaI)
