# Plage d'adresses IP du réseau (VPC)
variable "net_ip_range" {
  description = "La plage d'adresses IP du réseau (VPC)"
  type        = string
}

# Tags associés au réseau (facultatif)
variable "net_tags" {
  description = "Les tags à appliquer au réseau"
  type        = map(string)
  default     = {}
}
