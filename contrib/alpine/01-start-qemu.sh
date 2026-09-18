#!/bin/sh

url=https://uk.alpinelinux.org/alpine/v3.22/releases/x86_64/alpine-standard-3.22.1-x86_64.iso

# By default we just use the Alpine iso, but this script can also be used to
# with any other (already downloaded) iso with the syntax:
# ./01-start-qmenu.sh <name.iso>
if [ $# = 0 ]; then
	iso="$(basename $url)"
	if ! [ -f "$iso" ]; then
		curl -O "${url}"
	fi
else
	iso="$1"
fi

filename="$iso.qcow2"

cdrom_option=

if ! [ -f "$filename" ]; then
	qemu-img create -f qcow2 "$filename" 16G
	cdrom_option="-cdrom $iso"
fi

qemu-system-x86_64 \
	-enable-kvm \
	-m 2048 \
	-nic user,model=virtio \
	-drive file=$filename,media=disk,if=virtio \
	-display gtk \
	-cpu host \
	-vga qxl $cdrom_option

