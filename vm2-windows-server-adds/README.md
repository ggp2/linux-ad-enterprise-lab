# VM2 – Windows Server / Active Directory

## Informations Générales


- OS : Windows Server 2019/2022
- IP : 192.168.10.15
- Hostname : dc01.providence.lan
- Domaine : providence.lan
- Rôle : Contrôleur de domaine (AD DS)

DNS : Externe (VM1 – Red Hat)
---
## Services Installés

| Service  | Description                      |
|----------|----------------------------------|
| AD DS    | Active Directory Domain Services |
| Kerberos | Authentification                 |
| LDAP     | Annuaire                         |
| NTDS     | Base AD                          |

---

## Déploiement
Étapes principales :

1\. Installation rôle AD DS

2\. Promotion en contrôleur de domaine

3\. Configuration DNS externe

4\. Vérification Kerberos / LDAP

5\. Création utilisateurs et groupes



---


## Configuration

Fichiers / Paramètres importants :

- Base AD : NTDS.dit
- GPO
- Sites and Services
- SPN

#Les exports sont stockés dans `config/`.
---
## Sécurité
- Stratégies de mots de passe
- GPO sécurité
- Accès administrateurs limité
- Journaux activés
---



## Sauvegarde


- Windows Backup
- Export System State
- Snapshot VM
---


## Maintenance

- dcdiag
- eventvwr
- repadmin

