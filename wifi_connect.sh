#!/usr/bin/etc bash


# VALUES:

your_WiFi="TP-LINK_2B62"
wlan=wlan0
phy=phy0


# CONNECT:

# What I do?:
iwctl wsc $wlan start-pin
# scan anything wifi for connect:
iwctl station $wlan scan
# connect with your wifi-routers:
iwctl station $wlan connect $your_WiFi


# TEST YOUR WIFI CONNECT:

# send to google MSG and back:
ping -c 2 google.com

