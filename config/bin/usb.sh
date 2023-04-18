#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep usb0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "usb0" ]; then
        echo "%{F#1bbf3e} %{F#ffffff}$(/usr/sbin/ifconfig usb0 | grep "inet " | awk '{print $2}')%{u-}"
else
        echo "%{F#2495e7}%{u-} %{F#ffffff}Disconnected"
fi
