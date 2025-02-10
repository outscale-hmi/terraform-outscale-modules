# Module Outscale Keypair

Ce module Terraform permet de générer une paire de clés SSH (clé privée et clé publique), de sauvegarder la clé privée localement, et de créer un **keypair SSH** dans **Outscale**.

## Ressources créées

Le module crée les ressources suivantes :

- `tls_private_key`: Génère une clé privée RSA.
- `local_file`: Sauvegarde la clé privée dans un fichier local.
- `outscale_keypair`: Crée un keypair SSH dans **Outscale** à partir de la clé publique générée.

## Variables

- `key_name`: Nom de la clé SSH dans Outscale.

## Exemple d'utilisation

Voici un exemple d'utilisation du module dans un fichier `main.tf` :

```hcl
module "outscale_keypair" {
  source    = "./path/to/outscale-keypair-module"  # Remplacer par le chemin du module
  key_name  = "my-keypair"                         # Nom de la clé SSH dans Outscale
}

output "key_name" {
  value = module.outscale_keypair.key_name
}

output "private_key_path" {
  value = module.outscale_keypair.private_key_path
}