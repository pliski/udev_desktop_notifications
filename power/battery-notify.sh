#!/bin/bash

export XAUTHORITY=/home/pliski/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

# Slim notification
/usr/bin/notify-send -a "Power-notify" -c "device.change" "Power change" "On battery" -r 1338
