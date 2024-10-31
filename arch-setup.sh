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

#mount, fstab, chroot
mount --mkdir /dev/nvme0n1p2 /mnt
mount --mkdir /dev/nvme0n1p1 /mnt/boot

pacstrap -K /mnt base base-devel linux linux-firmware
genfstab -U /mnt > /mnt/etc/fstab
arch-chroot /mnt

#time and zone
timedatectl set-timezone Europe/London
hwclock --systohc
timedatectl set-ntp true

#locale
echo "en_GB.UTF-8 UTF-8" > /etc/locale.gen
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
UUID=$(blkid -s UUID -o value /dev/nvme0n1p1)
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

nmcli device wifi list
nmcli device wifi connect $ssid password $password

#packages
sudo pacman -Syu \
    bash-completion \
    bluez \
    code \
    clang \
    fd \
    firefox \
    gcc \
    git \
    jellyfin-server \
    libqalculate \
    moreutils \
    neovim \
    networkmanager \
    nvidia \
    pipewire \
    plasma-meta \
    playerctl \
    python \
    rg \
    sudo

#home config
cd $HOME
git clone https://github.com/avagordon01/.config
cd .config
ln -rs bash/.* ~
ln -rs autoexec.cfg ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg
sudo cp backup/backup.{service,timer} /etc/systemd/system/
sudo systemctl enable \
    bluetooth.service \
    jellyfin.service \
    NetworkManager.service \
    backup.timer

yay -S \
    code-features \
    code-marketplace
