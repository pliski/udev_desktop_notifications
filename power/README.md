# Battery Notifier

Get a desktop notification on power changes.

## Installation

```sh
cp ./*.sh ~/.local/bin/
chmod 0700 ~/.local/bin/battery-notify.sh
chmod 0700 ~/.local/bin/power-notify.sh

sudo cp ./60-onbattery.rules /etc/udev/rules.d/
sudo chown root:root /etc/udev/rules.d/60-onbattery.rules
sudo cp ./61-onpower.rules /etc/udev/rules.d/
sudo chown root:root /etc/udev/rules.d/61-onpower.rules

sudo udevadm control --reload
```

If you use **dunst** as a notification daemon, you can append the content of `dunst.append` to its config file:

```sh
cat ./dunstrc.append >> ~/.config/dunst/dunstrc
killall dunst # reloads the config
```
