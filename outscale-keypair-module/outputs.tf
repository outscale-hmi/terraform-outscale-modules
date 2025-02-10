# outputs.tf

# Sortie du nom de la clé SSH
output "key_name" {
  description = "Le nom de la clé SSH créée dans Outscale"
  value       = outscale_keypair.my_keypair.key_name
}

# Sortie du chemin de la clé privée
output "private_key_path" {
  description = "Le chemin du fichier contenant la clé privée"
  value       = local_file.my_private_key.filename
}
