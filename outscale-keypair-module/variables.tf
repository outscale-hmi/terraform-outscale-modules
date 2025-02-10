# variables.tf

# Nom de la clé SSH à créer
variable "key_name" {
  description = "Nom de la clé SSH à créer dans Outscale"
  type        = string
}

# Optionnel : clé publique SSH. Si non fournie, la clé publique est générée automatiquement
variable "public_key" {
  description = "Clé publique SSH à utiliser. Si non spécifiée, une clé publique RSA sera générée"
  type        = string
  default     = ""
}
