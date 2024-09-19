#!/bin/sh

#sound setup
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

#setup picom for terminal beauty (opacity, fading e.t.c)
picom &

#set desktop wallpaper using symlink
./.fehbg &

#setup status bar
slstatus &

#setup keyboard layout change using setxkbmap
./locale_setup.sh

#setup default routing (for proper vpn work)
#sudo ip route add default via 10.0.1.1 dev wlp3s0 proto dhcp src 10.0.1.68 metric 600 

#window manager setup
exec dwm
