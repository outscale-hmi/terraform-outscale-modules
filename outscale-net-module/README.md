# Module Outscale Net

Ce module Terraform crée un réseau (VPC) dans Outscale.

## Variables

- `net_ip_range`: La plage d'adresses IP pour le réseau (ex: "10.0.0.0/16").
- `net_tags`: Une map des tags à appliquer au réseau. Par défaut, aucun tag n'est appliqué.

## Exemple d'utilisation

```hcl
module "outscale_net" {
  source          = "./path/to/outscale-net-module"  # Remplace par le chemin réel vers le module
  net_ip_range    = "10.0.0.0/16"                    # La plage d'IP pour le réseau
  net_tags        = { "Environment" = "Production" } # Exemple de tags
}

output "network_id" {
  value = module.outscale_net.net_id
}
