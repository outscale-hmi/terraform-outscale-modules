# Sortie pour l'ID du réseau
output "net_id" {
  description = "L'ID du réseau créé"
  value       = outscale_net.my_net.net_id
}

# Sortie pour les tags du réseau
output "net_tags" {
  description = "Les tags appliqués au réseau"
  value       = outscale_net.my_net.tags
}
