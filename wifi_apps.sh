# PATH:

# my / Partition:
my_dir=/mnt


# INSTALL/UPDATE WIFI APPS:

# check this deamons:
systemctl check systemd-networkd systemd-resolved iwd
# install iwd servise if not found - inactive:
pacstrap $my_dir/ iwd # and  systemd-networkd systemd-resolved
# and run servise:
systemctl start iwd # or enable - for start in botting

