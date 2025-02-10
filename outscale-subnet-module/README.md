= Module Outscale Subnet

Ce module Terraform permet de créer un réseau (VPC) et un sous-réseau (Subnet) dans Outscale. Il prend en charge la définition des plages d'adresses IP pour ces ressources ainsi que la configuration de la sous-région.

== Variables

- `net_ip_range`: Plage d'adresses IP pour le réseau. Exemple: "10.0.0.0/16"
- `subnet_ip_range`: Plage d'adresses IP pour le subnet. Exemple: "10.0.1.0/24"
- `region`: La région où vous souhaitez créer le subnet. Exemple: "us-east-1"

== Exemple d'utilisation

Voici un exemple d'utilisation du module dans un fichier `main.tf` :

[source,hcl]
----
module "outscale_subnet" {
  source         = "./path/to/outscale-subnet-module"  # Remplacer par le chemin du module
  net_ip_range   = "10.0.0.0/16"                      # Plage d'adresses IP du réseau
  subnet_ip_range = "10.0.1.0/24"                     # Plage d'adresses IP du subnet
  region         = "us-east-1"                         # Région pour le subnet
}

output "network_id" {
  value = module.outscale_subnet.net_id
}

output "subnet_id" {
  value = module.outscale_subnet.subnet_id
}
----

== Ressources créées

Le module crée les ressources suivantes :

- `outscale_net`: Crée un réseau (VPC) dans Outscale.
- `outscale_subnet`: Crée un sous-réseau dans le réseau créé.

== Sorties

- `net_id`: ID du réseau créé dans Outscale.
- `subnet_id`: ID du sous-réseau créé dans Outscale.
