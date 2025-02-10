# main.tf

# Création de l'adresse IP publique dans Outscale
resource "outscale_public_ip" "my_public_ip" {
  # Optionnel : tu peux définir un type d'adresse IP (par exemple, "STATIC" pour une IP statique)
  # type = "STATIC"
}

# Association de l'adresse IP publique à la VM
resource "outscale_public_ip_link" "my_public_ip_link" {
  vm_id     = var.vm_id                  # ID de la VM à laquelle l'IP sera associée
  public_ip = outscale_public_ip.my_public_ip.public_ip  # L'adresse IP publique créée
}
