#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep eth0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "eth0" ]; then
        echo "%{F#1bbf3e} %{F#ffffff}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
else
        echo "%{F#2495e7}%{u-} %{F#ffffff}Disconnected"
fi
