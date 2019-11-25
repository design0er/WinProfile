#!/bin/sh
#xrandr --output default -rate 60 --fb 2560x1440 --panning 2560x1440 --mode 2560x1440 --pos 0x0 --rotate normal
#xrandr --output Virtual1 --mode 1920x1080_60.00 --pos 0x0 --rotate normal --dpi 144
#xrandr --output Virtual1 --mode 2560x1440_60.00 --pos 0x0 --rotate normal --dpi 144
xset fp+ /usr/local/share/fonts/urwfonts
xset fp+ /usr/local/share/fonts/TTF
xset fp+ /usr/local/share/fonts/TrueType
xset fp+ /usr/local/share/fonts/powerline-fonts
xset fp rehash
exec fvwm -l 24
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrdb -merge /home/hunter/.Xresources
#xmonad
#/usr/local/bin/stumpwm
