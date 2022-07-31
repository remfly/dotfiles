#!/usr/bin/env bash
###############################################################
#                                                             #
#                                  __ _                       #
#              _ __ ___ _ __ ___  / _| |_   _                 #
#             | '__/ _ \ '_ ` _ \| |_| | | | |                #
#             | | |  __/ | | | | |  _| | |_| |                #
#             |_|  \___|_| |_| |_|_| |_|\__, |                #
#                                       |___/                 #
#                                                             #
#                                                             #
###############################################################
#                                                             #
#           https://github.com/remfly/dotfiles                #
#                                                             #
###############################################################

external_monitor="$(xrandr --query | grep -v 'disconnected' | grep 'HDMI-2')"

if [[ "${external_monitor}" = *connected* ]]; then
    xrandr --output eDP-1 --off --output HDMI-2 --primary --rate 120 --mode 1920x1080 --pos 0x0 --rotate normal &
    bspc monitor HDMI-2 -d "" "" "" "ﱘ" "" "" "﬐" "" "" &
    /home/remfly/.config/polybar/monitor.sh &
    /usr/bin/dunst -config /home/remfly/.config/dunst/monitor_dunstrc &
    xgamma -rgamma 1,1 -ggamma 1,1 -bgamma 1,1 &
    exec setxkbmap -layout us -variant altgr-intl &
else
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-2 --off &
    bspc monitor eDP-1 -d "" "" "" "ﱘ" "" "" "﬐" "" "" &
    /home/remfly/.config/polybar/laptop.sh &
    /usr/bin/dunst -config /home/remfly/.config/dunst/laptop_dunstrc &
    xgamma -rgamma 0.8,0.8 -ggamma 0.8,0.8 -bgamma 0.75,0.75 &
    exec setxkbmap -layout br &
fi
