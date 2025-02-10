# variables.tf

# ID de la machine virtuelle à laquelle l'adresse IP publique sera liée
variable "vm_id" {
  description = "ID de la machine virtuelle à laquelle l'adresse IP publique sera associée"
  type        = string
}

# Optionnel : type d'adresse IP ("STATIC" ou "DYNAMIC")
variable "public_ip_type" {
  description = "Type d'adresse IP (STATIC ou DYNAMIC)"
  type        = string
  default     = "STATIC"
}
