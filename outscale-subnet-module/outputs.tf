# outputs.tf

# Sortie de l'ID du réseau créé
output "net_id" {
  description = "L'ID du réseau (Outscale Network)"
  value       = outscale_net.my_net.net_id
}

# Sortie de l'ID du subnet créé
output "subnet_id" {
  description = "L'ID du subnet (Outscale Subnet)"
  value       = outscale_subnet.my_subnet.subnet_id
}
