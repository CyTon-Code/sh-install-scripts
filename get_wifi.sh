#!/usr/bin/etc bash

# INSTALL/UPDATE WiFi apps:

# check this deamons:
systemctl check systemd-networkd systemd-resolved iwd

# install iwd servise if not found - inactive:
castrap /mnt iwd # and  systemd-networkd systemd-resolved

systemctl start iwd # or enable - for start in botting

# CONNECT:

# What I do?:
iwctl wsc wlan0 start-pin
# scan anything wifi for connect:
iwctl station wlan0 scan
# connect with your wifi-routers:
iwctl station wlan0 connect Name_Your_WiFi

# test wifi connect:
ping -c 4 google.com

