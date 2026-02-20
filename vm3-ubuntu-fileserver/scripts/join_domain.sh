#!/bin/bash

apt update

apt install -y realmd sssd sssd-tools adcli krb5-user samba-common-bin

realm join providence.lan -U administrator

systemctl enable --now sssd
