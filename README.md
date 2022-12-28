<img src="assets/Hardware_Virtualization_(copy).svg" alt="Hardware Virtualization" style="width: 450px;" align="right">

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
- Isolate the VM from the Host
- Virtualization adds additional layers of complexity and therefore monitoring and finding security vulnerabilities becomes more difficult (means also that a hacker has more work to do to understand the environment)
- A virtualized network is isolated from other virtual networks and physical networks
    - For this to work the isolation cannot require firewall, ACLs and...
- Traffic in between hypervisors are encapsulated and the physical network operates in a different address space
    - Example of it is that networks can be IPv6 and virtual networks can be IPv4 or vice versa
- Network Segmentation: split a computer network into subnetworks and make each of them a network segment (implemented by a hypervisor switch or OpenvSwitch)
    - Better performance
    - Better security
        - Segmentation provides a good control for limit access to the network

> Security can be broken by bad configurations.
>
> Example: a bunch of open ports!

### Sandbox
- Examples: 
    - SELinux
    - Apparmor
    - Virtual machine
    - JVM
    - Features in browser like Chromium
    - Sandboxie
        - Developed by the Invincea Windows OS
        - It allows users to run and install applications without modifying your drive
    - http://www.sandboxie.com/
    - Linux version: https://pdos.csail.mit.edu/archive/mbox/

> Over time hackers have found ways arround sandboxing.
>
> Example: [Paranoid Fish](https://github.com/a0rtega/pafish)

### Containers vs Virtualization
Mostly about containers.
- Also known as: Operating-system-level virtualization
- It's been around for a a while but Docker, Vagrantup and LXC have made it more pop

Little history on Docker: 
> *In 2004, Docker teamed up with companies like Canonical, Google, Red Hat and Parallels to create a standard that allows containers to work within Linux namespaces and control groups without any admin access and offer a better interface for all Linux Distro. This allows many containers to run in a single VM.*

Advantages: 
- Containers don't need some much overhead because the containers share the OS Kernel
- It makes applications running in containers more portable since you transfer an image of your container with the application so no issues with missmatching libraries or something
- Containers start faster than VMs

Disavantages: 
- Security is not as good compared to a VM because it shares Kernel hooks
- If Kernel vern. exists than it easy for a hacker to hack into the host system and other containers

Tool to test security of containers: https://github.com/coreos/clair

Other resources: 
- http://www.cvedetails.com/product/28125/Docker-Docker.html?vendor_id=13534
- https://www.blackhat.com/docs/eu-15/materials/eu-15-Bettini-Vulnerability-Exploitation-In-Docker-Container-Environments-wp.pdf

Five security concerns with Docker: 
1. Kernel exploits
2. Denial-of-service attacks
3. Container breakouts
4. Poisoned images
5. Compromising secrets

> Also to note that SELinux is very useful for the security of containers. When you let the container access a volume on your system it can then travel trough the rest of the system especially if it is running as root. So use SELinux for better access control and security.

### Linux Virtualization
#### Xen
- 

## Resources
- [1 - Chapter | HelloXenProject | Book | Wiki | Xen Project](https://wiki.xenproject.org/wiki/Book/HelloXenProject/1-Chapter)
- [XCP-NG vs Xen vs XenServer vs KVM vs Proxmox | YouTube](https://www.youtube.com/watch?v=yulfCYmliX8)
