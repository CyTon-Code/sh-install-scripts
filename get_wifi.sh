#!/usr/bin/etc bash

# INSTALL/UPDATE WiFi apps:
pacman -Syy iwd
systemctl start iwd # or enable - for start in botting

# CONNECT:

# What I do?:
iwctl wsc wlan0 start-pin
# scan anything wifi for connect:
iwctl station wlan0 scan
# connect with your wifi-routers:
iwctl station wlan0 connect TP-LINK_2B62

# test wifi connect:
ping -C 4 google.com

