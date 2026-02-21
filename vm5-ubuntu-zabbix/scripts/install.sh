#!/bin/bash

apt update

apt install -y zabbix-server-mysql zabbix-frontend-php \
zabbix-agent mysql-server nginx
