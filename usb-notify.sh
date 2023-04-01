#!/bin/bash

export XAUTHORITY=/home/pliski/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

busname=$1;

# uncomment for debug
# echo "changes in USB. " > /tmp/test.out
# i=1;
# for param in "$@" 
# do
#     echo -e "$i: $param \n " >> /tmp/test.out;
#     i=$((i + 1));
# done

# dunstify is like notify-send but specific to dunst
#dunstify "USB change"
/usr/bin/notify-send "USB: /dev/$busname"

