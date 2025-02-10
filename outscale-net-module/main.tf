# Définir un réseau (VPC) dans Outscale
resource "outscale_net" "my_net" {
  ip_range = var.net_ip_range

  # Optionnel: Définir les tags du réseau pour mieux organiser
  tags = var.net_tags
}
