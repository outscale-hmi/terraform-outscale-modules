# outputs.tf

# Sortie de l'adresse IP publique créée
output "public_ip" {
  description = "L'adresse IP publique créée"
  value       = outscale_public_ip.my_public_ip.public_ip
}

# Sortie de l'ID de la machine virtuelle à laquelle l'IP est associée
output "vm_id" {
  description = "L'ID de la machine virtuelle à laquelle l'adresse IP publique est liée"
  value       = var.vm_id
}
