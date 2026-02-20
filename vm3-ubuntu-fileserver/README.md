# VM3 – Ubuntu Fileserver / AD Client

## Informations Générales

- OS : Ubuntu Server 20.04 / 22.04
- IP : 192.168.10.50
- Hostname : files01.providence.lan
- Domaine : providence.lan
- Rôle : Serveur de fichiers + Client AD
---
## Services Installés

| Service   | Description        |
|-----------|--------------------|
| Samba     | Partages réseau    |
| SSSD      | Authentification AD|
| Kerberos  | SSO                |
| realmd    | Intégration domaine|

---
## Déploiement

Étapes :


1\. Configuration DNS
2\. Installation paquets AD
3\. Join domaine
4\. Configuration SSSD
5\. Configuration Samba
6\. Tests utilisateurs



---

## Sécurité
- Accès via groupes AD
- Permissions POSIX
- Firewall actif
- Durcissement SSH
---
## Sauvegarde

- Sauvegarde partages
- Backup configs
- Snapshots VM





