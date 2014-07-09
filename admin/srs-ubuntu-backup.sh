#!/bin/sh
#
# backup sunray installation/configuration

tar cvf srs-`hostname`.tar /etc/opt /opt/SUNW* /var/opt /tftpboot /etc/init.d/ut* /etc/init.d/zsunray* /usr/src/SUNWut
