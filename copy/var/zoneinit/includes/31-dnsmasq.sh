#!/usr/bin/bash

# Enable dnsmasq
log "starting dnsmasq"
/usr/sbin/svcadm enable -r svc:/pkgsrc/dnsmasq:default
