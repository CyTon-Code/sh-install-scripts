user=gnu
my_shell=bash


# PATH:
# my / partition:
my_dir=/mnt
# my home work directory:
home_dir=$my_dir/home/$user
# my backup directory with 16 GB:
backup_dir=$home_dir/backup

# if boot and home is not have then:
mkdir $my_dir/{boot,home}

mount /dev/sda2 $my_dir/boot/

swapon /dev/sda3 

mount /dev/sda5 $my_dir/home/


mkdir $backup_dir
mount /dev/sda6 $backup_dir/

arch-chroot $my_dir/

# do backup bash history comands and others:
cat $home_dir/.$my_shell'_history' > backup_dir/.$my_shell'_history'
