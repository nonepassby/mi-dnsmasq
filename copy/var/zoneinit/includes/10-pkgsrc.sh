#!/usr/bin/bash

if /usr/sbin/mdata-get pkgsrc 1>/dev/null 2>&1; then
    PKGSRC=$(/usr/sbin/mdata-get pkgsrc)
    BRAND=$(/usr/sbin/mdata-get sdc:brand)
    if [ "${BRAND}" == "joyent-minimal" ];then
        sed -i '' "s|^http.*|${PKGSRC}|" /opt/local/etc/pkgin/repositories.conf;
		sed -i '' "s|^PKG_PATH=.*|PKG_PATH=${PKGSRC}|" /opt/local/etc/pkg_install.conf
    else
        sed -i "s|^http.*|${PKGSRC}|" /opt/local/etc/pkgin/repositories.conf;
		sed -i "s|^PKG_PATH=.*|PKG_PATH=${PKGSRC}|" /opt/local/etc/pkg_install.conf 
    fi
fi