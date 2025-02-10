# main.tf

# Ressource pour la table de routage dans Outscale
resource "outscale_route_table" "my_route_table" {
  net_id = outscale_net.my_net.net_id  # ID du réseau pour la table de routage
}

# Lien de la table de routage avec le sous-réseau
resource "outscale_route_table_link" "my_route_table_link" {
  subnet_id      = outscale_subnet.my_subnet.subnet_id    # ID du sous-réseau
  route_table_id = outscale_route_table.my_route_table.route_table_id  # ID de la table de routage
}

# Route par défaut pour accéder à Internet via un service Internet
resource "outscale_route" "my_default_route" {
  destination_ip_range = "0.0.0.0/0"  # Plage d'IP de destination pour la route par défaut
  gateway_id           = outscale_internet_service.my_internet_service.internet_service_id  # ID du service Internet
  route_table_id       = outscale_route_table.my_route_table.route_table_id  # ID de la table de routage
}
