#!/bin/bash

tar czf /backup/vm1-config-$(date +%F).tar.gz \
/etc/named.conf \
/etc/dhcp/dhcpd.conf \
/etc/chrony.conf
