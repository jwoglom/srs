#!/bin/sh
#
#

find /opt.orig -type l >/tmp/exclude
diff -r -u -N -X /tmp/exclude /opt.orig /opt >srs.patch

find /etc/opt.orig -type l >/tmp/exclude
diff -r -u -N -X /tmp/exclude /etc/opt.orig /etc/opt >>srs.patch

find /var/opt.orig -type l >/tmp/exclude
diff -r -u -N -X /tmp/exclude /var/opt.orig /var/opt >>srs.patch

find /usr/src/SUNWut.orig -type l >/tmp/exclude
diff -r -u -N -X /tmp/exclude /usr/src/SUNWut.orig /usr/src/SUNWut >kernel-modules.patch
