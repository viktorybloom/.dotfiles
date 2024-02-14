#!/bin/sh
# Times the screen off and puts it to background
swayidle -w \
    timeout 300 'swaylock -C ~/.config/swaylock/config' \  
    timeout 600 'swaymsg "output * power off"' \
    resume 'swaymsg "output * power on"' \


