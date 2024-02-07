#!/bin/bash

entries="Logout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $entries | wofi --width 250 --height 250 --dmenu \
  --cache-file /dev/null \
  --font "VictorMono Nerd Font 16" \
  --padding 10 \
  --lines 6 \
  | awk '{print tolower($2)}')

case $selected in
  logout)
    pkill -u kia;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff;;
    # it used to be poweroff -i
esac

