#!/usr/bin/etc bash

your_WiFi="TP-LINK_2B62"
wlan=wlan0
phy=phy0

# CONNECT on Life-Linux:

# What I do?:
iwctl wsc $wlan start-pin
# scan anything wifi for connect:
iwctl station $wlan scan
# connect with your wifi-routers:
iwctl station $wlan connect $your_WiFi

# test wifi connect:
ping -c 2 google.com



# INSTALL/UPDATE WiFi apps on your linux-PK:

# check this deamons:
systemctl check systemd-networkd systemd-resolved iwd
# install iwd servise if not found - inactive:
pacstrap /mnt iwd # and  systemd-networkd systemd-resolved
# and run servise:
systemctl start iwd # or enable - for start in botting

