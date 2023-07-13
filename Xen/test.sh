#!/bin/bash

echo "Checking CPU hardware virtualization support..."

egrep -wo 'vmx|svm' /proc/cpuinfo

if [ $? -eq 0 ]
then
    echo "VT-x/AMD-V support is enabled in the CPU."
else
    echo "VT-x/AMD-V support is not available in the CPU. You may want to check if it's disabled in BIOS."
fi

echo "Checking for IOMMU support..."

dmesg | grep -e DMAR -e IOMMU

if [ $? -eq 0 ]
then
    echo "IOMMU support is enabled in the system."
else
    echo "IOMMU support is not available or not enabled in the system. You may want to check if it's disabled in BIOS."
fi
