#!/bin/bash

/usr/bin/notify-send -a "USB-notify" -c "device.added" "/dev/hello"
sleep 1;
/usr/bin/notify-send -a "USB-notify" -c "device.added" "/dev/hello" 
sleep 1;
/usr/bin/notify-send -a "USB-notify3" -c "device.removed" "/dev/hello" 
sleep 1;
/usr/bin/notify-send -u low -a "Low" -c "device.removed" "low urgency" 
/usr/bin/notify-send -u normal -a "Normal" -c "device.removed" "normal urgency" 
/usr/bin/notify-send -u critical -a "Critical" -c "device.removed" "critical urgency" 

