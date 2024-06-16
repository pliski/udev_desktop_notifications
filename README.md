# udev desktop notifications

Get a desktop notification on udev events.

## How it works

The files `*.rules` contains the **udev** rule to filter udev events: when a match is found the script `*-notify.sh` is executed.

`*-notify.sh` uses *notify-send* to send a notification via **dbus**.

The desktop notification daemon (like [dunst](https://dunst-project.org/) for example) will then catch the notification and display a message with the given informations.

## Installation

see READMEs in subfolders.

If you use **dunst** as a notification daemon, you can append the content of `dunst.append` to its config file:

```sh
cat ./dunstrc.append >> ~/.config/dunst/dunstrc
killall dunst # reloads the config
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
