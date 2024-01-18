# .dotfiles
setup for local env and miscellaneous stuff 

### Reminders
When setting up new instance, you may run into git public key issues (if you already have a key setup in your main dist).
To fix this, run `eval "$(ssh-agent -s)" \ ssh-add ~/.ssh/id_rsa`. 

### Secondary screen setup
Run `xrandr` to obtain list of displays connected to device. 
To connect secondary display, to the right of primary, run (for example):
`xrandr --output HDMI-2 --auto --right-of eDP-1`

 
