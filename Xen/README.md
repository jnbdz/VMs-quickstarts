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
- 

## Resources

