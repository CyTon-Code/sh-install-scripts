#!/usr/bin/bash

bash get_wifi.sh
pacman -Syy man less sed sudo cat
bash get_git.sh
bash get_micro.sh

pacman -S wget w3m fff

