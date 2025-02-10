# Module Outscale Public IP

Ce module Terraform permet de créer une adresse IP publique dans **Outscale** et de l'associer à une machine virtuelle (VM).

## Variables

- `vm_id`: ID de la machine virtuelle à laquelle l'adresse IP publique sera associée.
- `public_ip_type`: Type d'adresse IP (STATIC ou DYNAMIC). Par défaut, une adresse IP statique est utilisée.

## Exemple d'utilisation

Voici un exemple d'utilisation du module dans un fichier `main.tf` :

```hcl
module "outscale_public_ip" {
  source         = "./path/to/outscale-public-ip-module"  # Remplacer par le chemin du module
  vm_id          = "vm-12345"                             # ID de la machine virtuelle
  public_ip_type = "STATIC"                               # Type d'adresse IP
}

output "public_ip" {
  value = module.outscale_public_ip.public_ip
}

output "vm_id" {
  value = module.outscale_public_ip.vm_id
}