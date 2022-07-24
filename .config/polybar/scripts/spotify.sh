#!/bin/sh
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

# NOT MADE BY ME, JUST EDITED

player_status=$(playerctl -p spotify status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "Playing:  $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)  "
elif [ "$player_status" = "Paused" ]; then
    echo "Paused:  $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)  "
else
    echo "Not Playing  "
fi
