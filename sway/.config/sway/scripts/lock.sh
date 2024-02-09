#!/bin/sh
# Times the screen off and puts it to background
swayidle -w \
        timeout 600 'swaymsg "output * power off"' \
            resume 'swaymsg "output * power on"' & 
        before-sleep 'swaylock -C ~/.config/swaylock/config \'

# Locks the screen immediately
swaylock -C ~/.config/swaylock/config
# Kills last background task so idle timer doesn't keep running
kill %%

