# variables.tf

# ID du réseau auquel appartient la table de routage
variable "net_id" {
  description = "ID du réseau auquel appartient la table de routage"
  type        = string
}

# ID du sous-réseau auquel la table de routage est liée
variable "subnet_id" {
  description = "ID du sous-réseau auquel la table de routage est liée"
  type        = string
}

# ID du service Internet pour la route par défaut
variable "internet_service_id" {
  description = "ID du service Internet pour la route par défaut"
  type        = string
}
