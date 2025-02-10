# Module Outscale Route

Ce module Terraform permet de créer une table de routage, de l'associer à un sous-réseau, et d'ajouter une route par défaut vers un service Internet dans Outscale.

## Variables

- `net_id`: ID du réseau auquel appartient la table de routage.
- `subnet_id`: ID du sous-réseau auquel la table de routage sera associée.
- `internet_service_id`: ID du service Internet pour la route par défaut.

## Exemple d'utilisation

Voici un exemple d'utilisation du module dans un fichier `main.tf` :

```hcl
module "outscale_route" {
  source               = "./path/to/outscale-route-module"  # Remplacer par le chemin du module
  net_id               = "net-12345"                         # ID du réseau
  subnet_id            = "subnet-67890"                      # ID du sous-réseau
  internet_service_id  = "internet-service-abcde"           # ID du service Internet
}

output "route_table_id" {
  value = module.outscale_route.route_table_id
}

output "subnet_id" {
  value = module.outscale_route.subnet_id
}

output "route_id" {
  value = module.outscale_route.route_id
}
