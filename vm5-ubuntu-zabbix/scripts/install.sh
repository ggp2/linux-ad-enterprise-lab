#!/bin/bash

dnf install -y postfix dovecot openldap-clients

systemctl enable --now postfix dovecot
