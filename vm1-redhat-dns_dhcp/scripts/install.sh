#!/bin/bash

dnf install -y bind dhcp-server chrony

systemctl enable --now named dhcpd chronyd

firewall-cmd --add-service=dns  --permanent
firewall-cmd --add-service=dhcp --permanent
firewall-cmd --reload
