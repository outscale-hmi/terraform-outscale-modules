# ID du réseau (VPC) auquel le groupe de sécurité sera associé
variable "net_id" {
  description = "ID du réseau auquel le groupe de sécurité sera associé"
  type        = string
}

# Plage d'adresses IP autorisées à accéder à la ressource (ex: 0.0.0.0/0 pour tout le monde)
variable "allowed_cidr" {
  description = "Plage d'adresses IP autorisées à accéder à la ressource"
  type        = string
  default     = "0.0.0.0/0"  # Par défaut, toute adresse IP est autorisée
}
