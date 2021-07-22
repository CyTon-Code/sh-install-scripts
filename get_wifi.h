#!/usr/bin/etc bash
iwctl wsc wlan0 start-pin
iwctl station wlan0 scan
iwctl station wlan0 connect TP-LINK_2B62

ping 8.8.8.8
