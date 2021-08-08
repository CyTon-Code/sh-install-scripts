user=gnu
my_shell=bash


# PATH:

# my / Partition:
my_dir=/mnt
# my home work directory:
user_dir=$my_dir/home/$user
# my backup directory with 16 GB:
backup_dir=$user_dir/backup

# MAKE DIRECTORY AND MOUNTING POINT:

# if boot and home is not have then:
mkdir $my_dir/{boot,home}
# this Partition run first for booting:
mount /dev/sda2 $my_dir/boot/
# this Partition - RAM but on hard-disk:
swapon /dev/sda3 # SWAP
# this Partition - home directory:
mount /dev/sda5 $my_dir/home/
# if backup is not have then:
mkdir $backup_dir
# I like to use this Partition to store important copies:
mount /dev/sda6 $backup_dir/
# RUN BASH ON YOUR HARD-DISK:
arch-chroot $my_dir/

# do backup bash history comands and others:
bash run_backup.sh
