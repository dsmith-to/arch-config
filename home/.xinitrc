#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

syndaemon -t -k -i 2 &
xautolock -time 3 -locker slock &
 
devmon --exec-on-drive "urxvt -e vifm %d"  &

xsetroot -cursor_name left_ptr
hsetroot -fill /home/smithd/Pictures/VgOsP.jpg
xcompmgr &
xrandr --output VGA1 --auto --output LVDS1 --auto
exec xmonad

