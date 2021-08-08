user=gnu
my_shell=bash


# PATH:

# my / Partition:
my_dir=/mnt
# my home work directory:
user_dir=$my_dir/home/$user
# my backup directory with 16 GB:
backup_dir=$user_dir/backup


# BACKUP:

cat $user_dir/.$my_shell'_history' >> $backup_dir/.$my_shell'_history'

