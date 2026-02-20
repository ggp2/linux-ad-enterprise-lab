# VM4 – Mail Server (Postfix / Dovecot / LDAP)

## Informations Générales

- OS : CentOS 7 / Rocky 8
- IP : 192.168.10.30
- Hostname : mail01.providence.lan
- Domaine : providence.lan
- Rôle : Serveur Mail
---
## Services Installés

| Service       | Rôle     |
|---------------|----------|
| Postfix       | SMTP     |
| Dovecot       | IMAP     |
| OpenLDAP      | Auth     |
| SpamAssassin  | Antispam |



---

## Authentification

- LDAP / AD via bind sécurisé
-  Comptes centralisés
---
## Sécurité
- TLS activé
- Relay restreint
- Firewall configuré
- Fail2ban
---

## Sauvegarde

- Spool mail
- Configs
- Certificats





