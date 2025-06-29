#!/usr/bin/env bash

set -ex

localectl set-keymap uk
nmcli device wifi list
nmcli device wifi connect $ssid password $password

#partition
parted /dev/nvme0n1 \
    mklabel GPT \
    mkpart "EFI system partition" fat32 0 1GiB \
    set 1 esp on \
    mkpart "root partition" ext4 1GiB 100% \
    type 2 4F68BCE3-E8CD-4DB1-96E7-FBCAF984B709
mkfs.fat -F 32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2

#mount, chroot
mount --mkdir /dev/nvme0n1p2 /mnt
mount --mkdir /dev/nvme0n1p1 /mnt/boot

pacstrap -K /mnt base sudo linux linux-firmware
#no fstab, use automounting https://wiki.archlinux.org/title/Systemd#GPT_partition_automounting
arch-chroot /mnt

#time and zone
timedatectl set-timezone Europe/London
hwclock --systohc
timedatectl set-ntp true

#locale
echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
localectl set-locale LANG=en_GB.UTF-8
localectl set-keymap uk
hostnamectl hostname ava-laptop

#initramfs
mkinitcpio -P

#root password
passwd

#bootloader
bootctl install
echo "default arch
timeout 0
console-mode auto" > /boot/loader/loader.conf
UUID=$(blkid -s UUID -o value /dev/nvme0n1p2)
echo "title arch
linux /mvlinuz-linux
initrd /intel-ucode.img
initrd /initramfs-linux.img
options root=UUID=$UUID rw" > /boot/loader/entries/arch.conf

#reboot
exit
reboot

#sudo
visudo

#user
systemctl enable systemd-homed.service
systemctl start systemd-homed.service
homectl create ava

#re-login

#network
sudo ln -sf ../run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
nmcli device wifi list
nmcli device wifi connect $ssid password $password

#packages (desktop & GUI)
sudo pacman -S \
    distrobox \
    firefox \
    flatpak{,-kcm} \
    nvidia-open \
    nvidia-prime \
    plasma-meta \
    podman \
    steam \

sudo systemctl enable \
    bluetooth.service \
    NetworkManager.service
