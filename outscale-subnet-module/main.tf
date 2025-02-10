# main.tf

# Ressource pour le réseau (Outscale Network)
resource "outscale_net" "my_net" {
  ip_range = var.net_ip_range  # Plage d'adresses IP pour le réseau
}

# Ressource pour le subnet (Outscale Subnet)
resource "outscale_subnet" "my_subnet" {
  net_id         = outscale_net.my_net.net_id  # ID du réseau auquel appartient ce subnet
  ip_range       = var.subnet_ip_range        # Plage d'adresses IP pour le subnet
  subregion_name = "${var.region}a"            # Nom de la sous-région, généralement la zone (par exemple, us-east-1a)
}
