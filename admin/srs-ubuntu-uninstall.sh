#!/bin/sh
#
# deletes all sunray related stuff (even configuration stuff!)
#

sudo /etc/init.d/zsunray-init stop
sudo update-rc.d -f zsunray-init remove
sudo apt-get purge "sunwut*" "sunwc*" "sunwd*"
sudo rm -rf /opt/apache-tomcat*
sudo rm -rf /opt/SUNW*
sudo rm -rf /var/opt/SUNW*
sudo rm -rf /etc/opt/SUNW*
sudo rm -rf /usr/src/SUNW*
sudo rm -f /etc/init.d/zsunray-init
sudo rm -f /etc/X11/Xsession.d/10SUNWut
sudo rm -f /etc/X11/Xsession.d/66SUNW-pulseaudio
sudo rm -rf /var/dt
sudo rm /usr/lib/libutdev.so.1
sudo rm /usr/share/X11/xkb
sudo mv /usr/share/X11/xkb.bak /usr/share/X11/xkb
