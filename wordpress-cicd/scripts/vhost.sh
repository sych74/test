#!/bin/bash
VHOSTS_DIR="/var/www/webroot"
VHOST_ORIG="vhconf.xml"
VHOST_TARGET=$1
VHOST_DOMAIN=$2
HTTPD_CONFIG="/var/www/conf/httpd_config.xml"
ED_CMD="ed --inplace"

[[ ! -f $VHOSTS_DIR/$VHOST_TARGET.xml ]] && cp $VHOSTS_DIR/$VHOST_ORIG $VHOSTS_DIR/$VHOST_TARGET.xml;
[[ ! -d $VHOSTS_DIR/$VHOST_TARGET ]] && mkdir $VHOSTS_DIR/$VHOST_TARGET;
/usr/bin/xmlstarlet $ED_CMD -u "virtualHostConfig/docRoot" -v "\$VH_ROOT/$VHOST_TARGET" $VHOSTS_DIR/$VHOST_TARGET.xml 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList" -t elem -n "virtualHost" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "name" -v "$VHOST_TARGET" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "vhRoot" -v "\$SERVER_ROOT/webroot/" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "configFile" -v "\$VH_ROOT/$VHOST_TARGET.xml" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "allowSymbolLink" -v "1" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "enableScript" -v "1" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "restrained" -v "1" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "setUIDMode" -v "0" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/virtualHostList/virtualHost[last()]" -t elem -n "chrootMode" -v "0" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTP']/vhostMapList" -t elem -n "vhostMap" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTP']/vhostMapList/vhostMap[last()]" -t elem -n "vhost" -v "$VHOST_TARGET" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTP']/vhostMapList/vhostMap[last()]" -t elem -n "domain" -v "$VHOST_DOMAIN" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTPS']/vhostMapList" -t elem -n "vhostMap" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTPS']/vhostMapList/vhostMap[last()]" -t elem -n "vhost" -v "$VHOST_TARGET" ${HTTPD_CONFIG} 2>&1;
/usr/bin/xmlstarlet $ED_CMD -s "httpServerConfig/listenerList/listener[name = 'HTTPS']/vhostMapList/vhostMap[last()]" -t elem -n "domain" -v "$VHOST_DOMAIN" ${HTTPD_CONFIG} 2>&1;
sudo jem service restart;
