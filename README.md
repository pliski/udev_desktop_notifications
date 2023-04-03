# USB NOTIFY

Get a desktop notification when a USB device state changes.

## How it works

the file *.rules contains the udev rule to filter udev events; when it find a match it execute `usb-notify.sh` that use `notify-send` to display desktop notification (for example with **dunst**).

## Installation 

```sh
sudo cp ./90-usb-notify.rules /usr/local/lib/udev/rules.d/ # or /etc/udev/rules.d/
sudo chown root:root /usr/local/lib/udev/rules.d/90-usb-notify.rules 
chmod 0700 ./usb-notify.sh
sudo udevadm control --reload
```

## ToDos

* write an installer;
* get the device and vendor names of the device from the udev facilites;
* implement a dunst action to display more infos on mouse click.

## References

[Arch wiki: udev](https://wiki.archlinux.org/title/Udev#Triggering_desktop_notifications_from_a_udev_rule)

```sh
man udev
```

## Tips

```sh
$> lsusb -D /dev/bus/usb/xxx/yyy
$> dbus-monitor
$> udevadm control --reload-rules && udevadm trigger // reload udev rules
$> udevadm info --attribute-walk --name=/dev/bus/usb/xxx/yyy
```
