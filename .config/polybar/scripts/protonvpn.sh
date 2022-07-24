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

# NOT MADE BY ME, JUST EDITED

COLOR_CONNECTED='#D8DEE9'
COLOR_DISCONNECTED='#D8DEE9'
ICON_CONNECTED="   "
ICON_DISCONNECTED="   "
INTERVAL=5
PRINT_VALUES=("ip")

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function array_contains () {
    local array="$1[@]"
    local seeking=$2
    local in=1
    for element in "${!array}"; do
        if [[ $element == "$seeking" ]]; then
            in=0
            break
        fi
    done
    return $in
}

function connect_vpn () {
    protonvpn-cli connect BR#21
}

function disconnect_vpn () {
    protonvpn-cli disconnect
}

function is_vpn_connected () {
    status=`protonvpn-cli status | grep IP:`
    if [ -z "$status" ]; then
        echo 0
    else
        echo 1
    fi
}

function toggle_vpn () {
    connected=`is_vpn_connected`
    if [[ $connected -eq 0 ]]; then
        connect_vpn
    else
        disconnect_vpn
    fi
}

function output () {
    out=""
    connected=`is_vpn_connected`
    if [[ $connected -eq 1 ]]; then
        out="%{F$COLOR_CONNECTED}$ICON_CONNECTED $(protonvpn-cli status | grep IP: | awk '{ print $2 }')%{F-}    "
    else
        out="%{F$COLOR_DISCONNECTED}$ICON_DISCONNECTED 127.0.0.1%{F-}    "
    fi
    echo "%{A1:$DIR/protonvpn -t:}$out%{A}"
}
while getopts 'ot' c
do
    case $c in
        o) output ;;
        t) toggle_vpn ;;
    esac
done
