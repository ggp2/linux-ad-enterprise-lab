#  Linux-Centric Enterprise Infrastructure with Active Directory

## Project: linux-ad-enterprise-lab
---
##  Présentation

Ce projet présente la mise en place d’une infrastructure d’entreprise centrée sur Linux, intégrant un contrôleur de domaine Windows Active Directory avec service DNS externe.
L’architecture repose sur des services critiques hébergés sous Linux (DNS, DHCP, fichiers, mail, supervision, web), tandis que Windows Server est utilisé exclusivement pour la gestion de l’annuaire Active Directory.
Ce projet vise à démontrer des compétences réelles en administration système, intégration Linux–AD et exploitation d’une infrastructure hybride en environnement professionnel.

---

##  Objectifs
- Déployer une infrastructure Linux orientée entreprise
- Mettre en place un Active Directory avec DNS externe
- Centraliser l’authentification via Kerberos / LDAP
- Intégrer les systèmes Linux au domaine AD
- Fournir des services réseau fiables
- Assurer la supervision et la sécurité
- Mettre en œuvre une démarche reproductible
---
##  Architecture Globale
###  Domaine

- Domaine Active Directory : providence.lan
- Type : AD DS avec DNS externe

###  Environnement
- Virtualisation : KVM / QEMU
- Réseau : LAN privé
- Authentification : Kerberos / LDAP / SSSD

###  Topologie Réseau


| VM  | OS            | Rôle Principal        | Adresse IP    |
| --- | ------------- | --------------------- | ------------- |
| VM1 | Red Hat 9      | DNS / DHCP / NTP       | 192.168.10.10 |
| VM2 | Windows Server | Active Directory       | 192.168.10.15 |
| VM3 | Ubuntu 20.04   | Serveur de fichiers    | 192.168.10.50 |
| VM4 | CentOS 7       | Serveur Mail           | 192.168.10.30 |
| VM5 | Ubuntu 20.04   | Supervision (Zabbix)   | 192.168.10.20 |
| VM6 | Red Hat 9      | Serveur Web            | 192.168.10.40 |

---

## ⚙️ Technologies Utilisées



| Domaine          | Technologies                     |
| ---------------- | ------------ --------------------|
| Annuaire         | Active Directory, Kerberos, LDAP |
| DNS / DHCP       | BIND9, ISC-DHCP, Chrony          |
| Authentification | SSSD, PAM, realmd                |
| Fichiers         | Samba                            |
| Mail             | Postfix, Dovecot                 |
| Supervision      | Zabbix                           |
| Web              | Apache / Nginx                   |
| Sécurité         | FirewallD, SELinux, Fail2ban     |
| Virtualisation   | KVM / QEMU                       |

---
##  Structure du Projet

linux-ad-enterprise-lab/

``` bash
├── README.md
├── architecture/
├── vm1-redhat-dns\_dhcp/
├── vm2-windows-server-adds/
├── vm3-ubuntu-fileserver/
├── vm4-centos-mail/
├── vm5-ubuntu-zabbix/
├── vm6-redhat-web/
└── docs/

```
---
## 🚀 Déploiement

###  Prérequis

- Hôte Linux avec KVM activé
- 16 Go RAM minimum
- 100 Go de stockage
- Accès administrateur

###  Ordre de Mise en Place



1\. VM1 – DNS / DHCP / NTP
2\. VM2 – Promotion AD DS
3\. Configuration DNS externe (SRV)
4\. VM3 – Serveur de fichiers
5\. VM4 – Mail
6\. VM5 – Supervision
7\. VM6 – Web
8\. Intégration des clients Linux
---
##  Description des Machines

### 🖥️ VM1 – Red Hat 9 (DNS / DHCP / NTP)
- Hébergement du DNS principal
- Gestion DHCP
- Synchronisation horaire
- Publication des enregistrements SRV AD

Services : BIND, ISC-DHCP, Chrony
---

### 🖥️ VM2 – Windows Server (AD DS)
- Contrôleur de domaine
- Gestion des utilisateurs et groupes
- Kerberos / LDAP
- Authentification centralisée

DNS : Externe (VM1)
---
### 🖥️ VM3 – Ubuntu (Fileserver)
- Partages Samba
- Intégration AD
- Gestion des permissions
---

### 🖥️ VM4 – CentOS (Mail)
- SMTP / IMAP
- Authentification LDAP
- Relais sécurisé
---
### 🖥️ VM5 – Ubuntu (Zabbix)

- Supervision des VM
- Collecte métriques
- Alertes
---
### 🖥️ VM6 – Red Hat 9 (Web)
- Hébergement Web
- Services internes
- Authentification optionnelle AD
---

##  Sécurité
- Pare-feu configuré par service
- SELinux en mode enforcing
- Durcissement SSH
- Fail2ban
- Politique mots de passe AD
- Séparation des rôles
---

##  Tests et Validation

Les preuves techniques sont disponibles dans :

```bash 
       docs/tests/ 
```

Elles couvrent :
- Résolution DNS (SRV, A, PTR)
- Fonctionnement Kerberos
- Authentification Linux
- Accès Samba
- Santé AD
- Supervision

Chaque test est issu de commandes réelles exécutées sur les serveurs.

---


##  Supervision

- Disponibilité des services
- CPU / RAM / Disques
- Alertes mail
- Historique des performances 
---
##  Sauvegarde
- Sauvegarde des configurations
- Sauvegarde AD
- Snapshots VM
- Tests de restauration réguliers

---
##  Méthodologie
L’infrastructure a été déployée manuellement afin de garantir une compréhension complète des mécanismes internes.
Certaines procédures sont ensuite documentées et partiellement automatisées pour améliorer la reproductibilité.
---

##  Compétences Développées
- Administration Linux avancée
- Active Directory
- DNS externe pour AD
- Kerberos / LDAP
- Sécurité système
- Supervision
- Architecture réseau
- Documentation technique
--- 
##  Perspectives d’Évolution
- Haute disponibilité DNS / AD
- MFA
- Centralisation des logs (SIEM)
- Ansible
- Cloud hybride
---

### Auteur

Nom : PROVIDENCE GOMA 
LinkedIn :  
Email : providence@gmail.com 

---
## Licence
Projet pédagogique – Usage libre



