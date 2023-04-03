# USB NOTIFY

Get a desktop notification when a USB device state changes.

## How it works

The file `*.rules` contains the **udev** rule to filter udev events: when a match is found the script `usb-notify.sh` is executed.

`usb-notify.sh` uses *notify-send* to send a notification via **dbus**.

The desktop notification daemon (like [dunst](https://dunst-project.org/) for example) will then catch the notification and display a message with the given informations.

## Installation 

```sh
sudo cp ./90-usb-notify.rules /usr/local/lib/udev/rules.d/ # or /etc/udev/rules.d/
sudo chown root:root /usr/local/lib/udev/rules.d/90-usb-notify.rules 
chmod 0700 ./usb-notify.sh
sudo udevadm control --reload
```

If you use **dunst** as a notification daemon you can append the content of `dunst.usbnotify` to its config file:

```sh
cat ./dunstrc.usbnotify >> ~/.config/dunst/dunstrc
```

## ToDos

* write an installer;
* ~~get the device and vendor names of the device from the udev facilites~~ ;
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
$> udevadm control --reload-rules && udevadm trigger # reloads udev rules
$> udevadm info --attribute-walk --name=/dev/bus/usb/xxx/yyy
```
