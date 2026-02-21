#!/bin/bash

tar czf /backup/mail-$(date +%F).tar.gz \
/etc/postfix /etc/dovecot /var/mail
