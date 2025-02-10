# variables.tf

# Plage d'adresses IP pour le réseau
variable "net_ip_range" {
  description = "Plage d'adresses IP pour le réseau"
  type        = string
}

# Plage d'adresses IP pour le subnet
variable "subnet_ip_range" {
  description = "Plage d'adresses IP pour le subnet"
  type        = string
}

# La région où créer le subnet (ex: us-east-1)
variable "region" {
  description = "Région où créer le subnet"
  type        = string
}
