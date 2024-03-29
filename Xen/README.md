<img src="assets/xen_project_logo_dualcolor_500x208.png" alt="Xen Project logo" style="width: 450px;" align="right">

# Xen | VMs QuickStarts
- Xen != Xenserver - The XenServer is now called Critix Hypervisor and is a commericla version from Critix
- Xen is backed by the Linux Foundation
- Xenserver is downstream of Xen and the same for XCP-ng is also downstream to Xen. XCP-ng is **not** downstream from Xenserver
- Over 10+ million people use Xen around the world + 2000+ commercial certified partners
- The license is GPLv2 AWS benefits from this because they have built tools arround Xen without needing to Open Source them (toolstacks)
- AWS is **NOT** replacing their Xen stack with KVM
- Xen is ~2% of the Linux code
    - As a true hypervisor type-1 you boot your hardware on Xen. Xen is similar to a micro-kernel (benefits: the attack surface is **REALLY** low!)
    - Since there is not that much code you can read it and understand it. Great way to learn what a hypervisor is and how it works and mover foward to improving it
    - You can contribute to it easily compared to KVM/Linux because the contributions are more trusted from Google, IBM and the like
- Critix and Vates invest a lot into Xen
- Proxmox vs XCP-ng - 

- Xen project is [type-1 hypervisor](http://en.wikipedia.org/wiki/Hypervisor)
- Multiple instances of an OS (other types in parallel) can be run at the same time
- Used for: 
    - server virtualization
    - Infrastructure as a Service (IaaS)
    - desktop virtualization
    - security applications
    - embedded
    - hardware appliances
- OS agnostic 

### Key features
- Footprint and interface are small (~1MB in size) - Microkernel design (reason why it is small)
- OS agnostic - dom0 is normaly Linux but it can also be NetBSD or OpenSolaris
- Driver Isolation - In the event that a driver crashes or is compromised it will only happen in the VM that uses it so that the other VMs are not affected
- Paravirtualization - Fully paravirtualized guests have been optimized to run as a virtual machine. This means that the guests will run faster than with hardware extensions (HVM). It also means that it can run on hardware that doesn't support virtualization extensions.

## Xen Project Architecture
![](assets/Xen_Arch_Diagram_v2.png)
- Xen Project runs directly on the hardware
- Responsible for handling: 
    - CPU
    - Memory
    - timers
    - interrupts
- It runs just after the bootloader before anything else
- VMs run on top of the hypervisor
- A VM instance is called: 
    - domain
    - guest
- domain 0 (dom0) contains: 
    - drivers for all the devices in the system
    - control stack
    - other system services to manage a Xen based system

> It is possible to break from this "*normal*" setup.
>
> Throught [Dom0 Disaggregation](https://wiki.xenproject.org/wiki/Dom0_Disaggregation) it is possible to run **some** of these services/drivers in a seperate VM.

- Hypervisor itself has no knowledge of I/O functions such as networking and storage 
- Guest Domains/VMs (they are also called unprivileged domain (or DomU)) have no privilege to access hardware or I/O functionality
- dom0 has special privileges: 
    - access the hardware directly
    - handles all access to the system’s I/O functions
    - interacts with the other Virtual Machines
- dom0 is needed for Xen Project hypervisor to work
- dom0 is the first VM to be started
- dom0 functions: 
    - **System Services**: 
        - [XenStore](https://wiki.xenproject.org/wiki/XenStore) - helps manage settings
        - [XenBus](https://wiki.xenproject.org/wiki/XenBus) (XS) - helps manage settings
        - Toolstack (TS) exposing a user interface to a Xen based system
        - Device Emulation (DE) - Based on [QEMU](https://wiki.xenproject.org/wiki/QEMU_Upstream) (Xen based systems)
    - **Native Device Drivers** - Dom0 is the source of physical device drivers and thus native hardware support for a Xen system
    - **Virtual Device Drivers** - Dom0 contains virtual device drivers (also called backends)
    - **Toolstack**: 
        - Manage VMs: Creation, Destruction, Configuration
        - Interface for: CLI, GUI, cloud orchestration stack such as OpenStack or CloudStack
- Xen Project-enabled operating systems:
    - Xen Project-enabled kernel is needed by Dom0
    - Paravirtualized guests require a PV-enabled guest (???)
    - Equal orhigher Linux 3.0 versions are Xen Project-enabled and usually include packages that contain the hypervisor and Tools (the default Toolstack and Console)
    - All but legacy Linux kernels older than Linux 2.6.24 are PV-enabled, capable of running PV guests

- [Xen Project Release Features](https://wiki.xenproject.org/wiki/Xen_Project_Release_Features)
- [Xen Project-Enabled operating systems](https://wiki.xenproject.org/wiki/Dom0_Kernels_for_Xen)

## Guest Types
- ARM hosts: One guest type
- x86 hosts (hypervisor supports): 
    - **Paravirtualized Guests or PV Guests**:
        - Introduced by Xen Project.
        - **No** need for virtualization extensions from the host CPU.
        - Needs Xen-aware guest operating systems.
        - PV guests are primarily of use for legacy HW and legacy guest images and in special scenarios, e.g. special guest types, special workloads (e.g. Unikernels), running Xen within another hypervisor without using nested hardware virtualization support, as container host
    - **HVM Guests**: 
        - 

## Debian Notes
```bash
sudo /usr/bin/xenstore-ls
sudo /usr/sbin/xl
```

## Resources

## Credits
- https://wiki.xenproject.org/wiki/File:Xen_Arch_Diagram_v2.png
