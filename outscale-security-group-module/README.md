# Module Outscale Security Group

Ce module Terraform permet de créer un groupe de sécurité dans **Outscale** et d'y associer des règles de sécurité.

## Variables

- `net_id`: L'ID du réseau auquel le groupe de sécurité sera associé.
- `allowed_cidr`: La plage d'adresses IP autorisées à accéder à la ressource (par défaut, "0.0.0.0/0" pour toute adresse IP).

## Exemple d'utilisation

Voici un exemple d'utilisation du module dans un fichier `main.tf` :

```hcl
module "outscale_security_group" {
  source      = "./outscale-security-group"  # Remplacer par le chemin du module
  net_id      = "net-12345"                  # ID de votre réseau
  allowed_cidr = "0.0.0.0/0"                 # Plage d'IP autorisée pour la règle
}

output "security_group_id" {
  value = module.outscale_security_group.security_group_id
}

output "security_group_rule_id" {
  value = module.outscale_security_group.security_group_rule_id
}
