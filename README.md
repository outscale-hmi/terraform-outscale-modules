# Terraform Modules for Outscale

Ce dépôt contient plusieurs modules Terraform pour la gestion des ressources dans **Outscale**. Ces modules permettent de simplifier la création, la configuration et la gestion d'infrastructures dans **Outscale** en automatisant les tâches courantes à l'aide de Terraform.

## Modules disponibles

1. **[Outscale Keypair](./outscale-keypair-module/)**
   Ce module permet de générer une paire de clés SSH (clé privée et clé publique), de sauvegarder la clé privée localement, et de créer un **keypair SSH** dans **Outscale**.

2. **[Outscale Public IP](./outscale-public-ip-module/)**
   Ce module permet de créer une adresse IP publique dans **Outscale** et de l'associer à une machine virtuelle (VM).

3. **[Outscale Subnet](./outscale-subnet-module/)**
   Ce module permet de créer un réseau (VPC) et un sous-réseau (Subnet) dans **Outscale**, avec la possibilité de définir les plages d'adresses IP et la région.

4. **[Outscale Route](./outscale-route-module/)**
   Ce module permet de créer une table de routage, de l'associer à un sous-réseau et d'ajouter une route par défaut vers un service Internet dans **Outscale**.

5. **[Outscale VM](./outscale-vm-module/)**
   Ce module permet de créer et de configurer une machine virtuelle (VM) dans **Outscale**, avec les options de personnalisation des ressources.

## Comment utiliser les modules

Pour utiliser un module dans votre configuration Terraform, il vous suffit de l'importer dans votre fichier `main.tf` en utilisant le chemin relatif vers le module souhaité.

Voici un exemple d'utilisation d'un module dans Terraform :

### Exemple d'utilisation pour le module `outscale-public-ip` :

```hcl
module "outscale_public_ip" {
  source         = "./outscale-public-ip"  # Remplacer par le chemin du module
  vm_id          = "vm-12345"              # ID de la machine virtuelle
  public_ip_type = "STATIC"                # Type d'adresse IP
}

output "public_ip" {
  value = module.outscale_public_ip.public_ip
}

output "vm_id" {
  value = module.outscale_public_ip.vm_id
}
