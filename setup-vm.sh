
if [ -z "$1" ]; then
    echo "Please specify vm disk" 
    exit 1
else
    vm_disk="$1"
fi

echo "Creating VM partition"
qemu-img create -f qcow2 $vm_disk 30G

echo "Launching VM"
qemu-system-aarch64 \
	-m 4G \
	-smp 4 \
	-cpu host \
	-machine virt,accel=hvf,highmem=on \
	-cdrom jammy-desktop-arm64.iso \
	-bios QEMU_EFI.fd \
	-device virtio-gpu-pci \
	-display default,show-cursor=on \
	-device qemu-xhci \
    	-device usb-kbd \
    	-device usb-tablet \
    	-device intel-hda \
    	-device hda-duplex \
	-drive file=$vm_disk,format=qcow2,if=virtio \
	-net nic -net user \
	-boot menu=on
