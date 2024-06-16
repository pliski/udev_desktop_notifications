#!/bin/bash

export XAUTHORITY=/home/pliski/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

busname="/dev/$1";
devpath=$2;

deviceDetails=$(lsusb -D ${busname} 2>/dev/null | head -n 1)

deviceName=$(cut -d " " -f4- <<< ${deviceDetails})
# deviceID=$(cut -d " " -f-3 <<< ${deviceDetails})

# Slim notification
/usr/bin/notify-send -a "USB-notify" -c "device.change" "$deviceName" "$busname" -r 1337

# Full notification
# /usr/bin/notify-send -a "USB-notify" -c "device.change" "$deviceName" "$deviceID \n $busname \n $devpath" -r 1337

# dunstify is like notify-send but specific to dunst
# dunstify "USB change"
