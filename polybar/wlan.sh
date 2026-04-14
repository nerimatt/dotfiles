#!/bin/bash

# Check if any wireless devices are blocked (airplane mode)
if rfkill list wlan | grep -q "blocked: yes"; then
    echo "󰀝 airplane"
    exit
fi

prefix="Auto " # prefix to remove when showing wifi on bar
ssid=$(nmcli -t -f NAME c show --active | grep -v "docker0\|lo\|br-b*" | sed -e "s/^prefix//")

[ -n "$ssid" ] && echo "  $ssid" || echo "󰖪 offline"

