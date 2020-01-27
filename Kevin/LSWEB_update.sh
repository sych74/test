#!/bin/bash
echo 'x86_64-linux' > /var/www/autoupdate/platform
echo '5.4.1-ent' > /var/www/autoupdate/release
/var/www/admin/misc/lsup.sh -f -v 5.4.4
cp /var/www/bin/lswsctrl.5.4.1 /var/www/bin/lswsctrl.5.4.4
for obj in add-ons admin autoupdate bin BUILD BUILD.5.4.1 BUILD.5.4.4 cgi-bin conf DEFAULT docs fcgi-bin html lib LICENSE license.key license.key.old LICENSE.OpenLDAP LICENSE.OpenSSL LICENSE.PHP logs lsrecaptcha modules modules.5.4.1 modules.5.4.4 phpbuild serial.no share ssl tmp VERSION; do
    chown -R litespeed:litespeed /var/www/${obj}
done
chown -R root:root /var/www/serial.no
rm -f /var/www/admin/tmp/sess_*
jem service restart
