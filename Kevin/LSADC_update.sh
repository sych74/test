#!/bin/bash
/var/www/admin/misc/lsup.sh -v 2.6
cp -f /var/www/bin/lslbctrl.2.5.1 /var/www/bin/lslbctrl.2.6
rm -f /var/www/logs/access.log.*
chown -R litespeed:litespeed /var/www
chown -R root:root /var/www/serial.no
jem service restart
