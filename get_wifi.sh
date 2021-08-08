#!/usr/bin/etc bash
# What I do?:
iwctl wsc wlan0 start-pin
# scan anything wifi for connect:
iwctl station wlan0 scan
# connect with your wifi-routers:
iwctl station wlan0 connect TP-LINK_2B62

# test wifi connect:
ping -C 4 8.8.8.8

