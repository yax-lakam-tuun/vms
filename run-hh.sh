
qemu-system-aarch64 \
	-m 4G \
	-smp 4 \
	-cpu host \
	-machine virt,accel=hvf,highmem=on \
	-bios QEMU_EFI.fd \
	-device virtio-gpu-pci \
	-display default,show-cursor=on \
	-device qemu-xhci \
    	-device usb-kbd \
    	-device usb-tablet \
    	-device intel-hda \
    	-device hda-duplex \
	-drive file=hh-vm.qcow2,format=qcow2,if=virtio \
	-net nic -net user
