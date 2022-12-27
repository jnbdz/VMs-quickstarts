# VMs-quickstarts
VMs (Virtual Machines) quickstarts!

## A Brief History of Virtualization
- 1960's - Used by mainframes and made by IBM (programmer behind it was Jim Rymarczyk). The name was CP-67 and was running on System/360-67. The OS CP/CMS was a time-sharing OS.
    - It is now used in the z/VM in the mainframe market
- 1972 - CP-40 was the replacement for CP-67 in that year it became an IBM product as hypervisor (UNIX is an example of virtualization at the end user level it will give you a good step towards application virtualization).
- 1990 - Sun Microsystems started a project called "Stealth". For better writting and running a applications
- 1995 - It was renamed to Java is able to run on many types of computers OSs and with a rich set of applications. Java let devs write code that could run on multiple OSs. All you need is to run the JRE to have your Java run. JRE contains many things like Java Virtual Machine. All Java apps run in the JVM. The JVM can be considered a small OS. For more details: https://en.wikipedia.org/wiki/Timeline_of_Virtualization_development%E2%80%9D
- 2005-2006 - Intel and AMD introduced limited hardware virtualization with Intel (VT-x) and AMD (AMD-V)
- 

## What is virtualization? And why?
- Instead of leaving a lot of hardware unused and let it go to waste you can use virtualization

## Types of Virtualization
- **Client Virtualization** - Refers to virtualization on a desktop or laptop computer. OS virt means the movement of the main desktop OS in a virtual env. The OS can be changed and modified without affecting other users.
    - **Containers** - Can help with moving apps from one computer to another environment. The Kernel runs on the hardware with several isolated guest virtual machines. Popular ones Podman, Docker, VagrantUp and LXC. They help with performance and overhead. Security is a challange but easy to use.
- **Server Virtualization** - Means moving a physical server to a virtual env. This type helps reduce the number of physical servers. Equals to more control over their growing server farms. Benefits: you can reboot a machine without affecting the other ones, you can have different OSs.
- **Storage Virtualization**
    - Combining multiple physical HDDs into a single virtualized storage
    - Synonyme: Cloud Computing
    - Better functionality and features
    - Help with: backup, archiving and recovery
    - It can be private, public or mixed
        - Private: hosted in the company
        - Public: out of your company like “DropBox”, “Microsoft One Drive”, “Amazon S3”
        - Mixed: environment is a combination of both
    - Data is stored in a logical pools and physical storage
- **Hardware Virtualization**
    - Real machine components made virtual
    - Synonym: platform virtualization (creating a VM that behaves like a real computer with an OS)
    - The virtualization hides the hardware from resources that the software cannot see
    - If you run Windows OS on linux with this type of VM it won't know it is in a VM
    - Sub-types: 
        - Full Virtualization: Simulation of hardware
        - Partial Virtualization: Simulation of mutiple instances of hardware. Not all of the OS is running on the VM. It is important for space constraints.
        - ParaVirtualization: No need for hardware virtualization. Special API is offered to modify the guest OS. The OS needs to be modifiable so the Source Code needs to be accessible for this type. This tech was introduce by Xen Project team. Also useful because you won't need to virtualize an extensions on the host CPU. Also useful for hardware that does not support hardware-assisted virtualization.

## Virtualization and Security
- 

## Resources
- [XCP-NG vs Xen vs XenServer vs KVM vs Proxmox | YouTube](https://www.youtube.com/watch?v=yulfCYmliX8)
