# Ubuntu VM for Apple Silicion M1 (ARM)

## Get Ubuntu ISO image
Download ARM64 ISO image from https://cdimage.ubuntu.com/jammy/daily-live/current/

## Setup new VM
To setup a new VM, run `setup-vm.sh`.
The script takes one argument, namely the name of the qcow2 image the VM should have.
The VM always has a hard disk with 30G.
The hardware configuration is also hardwired.
Please see setup-vm.sh for more information.
Adjust it to your needs.

## Run VM
To run the VM, run `run-vm.sh`.
The script takes one argument, namely the name of the qcow2 image the VM should have.
The hardware configuration is the same as above.

## Optional: Get QEmu EFI image
The EFI image is provided in this repository.
In case, you need to get it for yourself, follow the steps below

### Download qemu efi image for arm64
`https://packages.debian.org/bullseye/all/qemu-efi-aarch64/download`

### Extract QEMU_EFI.fd
`ar -x qemu-efi-aarch64_2020.11-2+deb11u1_all.deb`

`QEMU_EFI.fd` resides in the sub archive `data.tar.xy` in path `/usr/share/qemu-efi-aarch64`
