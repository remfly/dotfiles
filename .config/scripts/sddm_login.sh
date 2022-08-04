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

external_monitor="$(xrandr --query | grep 'HDMI-2')"

if [[ "${external_monitor}" = *connected* ]]; then
    xrandr --output eDP-1 --off --output HDMI-2 --primary --rate 120 --mode 1920x1080 --pos 0x0 --rotate normal
else
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-2 --off && xgamma -rgamma 0.75,0.75 -ggamma 0.75,0.75 -bgamma 0.72,0.72
fi
