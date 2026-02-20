# VM1 – DNS / DHCP / NTP

## Informations Générales

- OS : Red Hat Enterprise Linux 9
- IP : 192.168.10.10
- Hostname : server01.providence.lan
- Rôle : Serveur DNS, DHCP, NTP

---

## Services Installés



| Service | Package     | Port  |
|---------|-------------|-------|
| DNS     | bind        | 53    |
| DHCP    | dhcp-server | 67/68 |
| NTP     | chrony      | 123   |



---
## Configuration

Fichiers principaux :

- /etc/named.conf
- /var/named/zone.providence.lan
- /etc/dhcp/dhcpd.conf
- /etc/chrony.conf

Les fichiers de configuration sont sauvegardés dans le dossier `config/`.
---

## Sécurité

- Firewall : ports DNS, DHCP, NTP ouverts
- SELinux : enforcing
- Accès SSH par clé
---

## Sauvegarde

- Backup quotidien des fichiers de configuration
- Stockage sur serveur externe
---

## Maintenance
- Vérification journaux : journalctl -u named
- Vérification zones : named-checkzone





