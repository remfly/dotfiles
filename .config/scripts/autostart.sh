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

kdeconnect-indicator &
sleep 1.5

solaar -w hide &
sleep 0.5

nm-applet &
sleep 0.3

parcellite &
sleep 0.3

blueman-applet &
sleep 2

volumeicon &
sleep 1

killall -eq volumeicon &
sleep 1.5

volumeicon &
sleep 0.3

mictray &
sleep 0.3

flameshot &
