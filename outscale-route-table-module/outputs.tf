# outputs.tf

# Sortie de l'ID de la table de routage créée
output "route_table_id" {
  description = "L'ID de la table de routage créée"
  value       = outscale_route_table.my_route_table.route_table_id
}

# Sortie de l'ID du sous-réseau lié à la table de routage
output "subnet_id" {
  description = "L'ID du sous-réseau auquel la table de routage est liée"
  value       = outscale_subnet.my_subnet.subnet_id
}

# Sortie de l'ID de la route créée dans la table de routage
output "route_id" {
  description = "L'ID de la route créée dans la table de routage"
  value       = outscale_route.my_default_route.route_id
}
