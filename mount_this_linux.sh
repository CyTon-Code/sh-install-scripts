mkdir /mnt/{boot,home}
mount /dev/sda2 /mnt/boot

swapon /dev/sda3

mount /dev/sda5 /mnt/home

mkdir /mnt/gnu/Backup
mount /dev/sda6 /mnt/home/gnu/Backup

arch-chroot /mnt

