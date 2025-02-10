# main.tf

# Génération d'une clé privée RSA
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 2048  # La taille de la clé en bits
}

# Sauvegarde de la clé privée dans un fichier local
resource "local_file" "my_private_key" {
  filename        = "${path.module}/my_key.pem"  # Chemin où la clé privée sera sauvegardée
  content         = tls_private_key.my_key.private_key_pem  # Contenu de la clé privée
  file_permission = "0600"  # Permissions d'accès à la clé privée
}

# Création de la clé SSH dans Outscale à partir de la clé publique générée
resource "outscale_keypair" "my_keypair" {
  key_name   = var.key_name  # Nom de la clé SSH dans Outscale (variable)
  public_key = tls_private_key.my_key.public_key_openssh  # Clé publique au format OpenSSH
}

output "key_name" {
  value = outscale_keypair.my_keypair.key_name  # Retourne le nom de la clé créée dans Outscale
}

output "private_key_path" {
  value = local_file.my_private_key.filename  # Retourne le chemin du fichier contenant la clé privée
}
