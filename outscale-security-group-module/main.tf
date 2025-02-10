resource "outscale_security_group" "my_sg" {
  description = "test security group"
  net_id      = var.net_id  # ID du réseau auquel ce groupe de sécurité sera associé
}

resource "outscale_security_group_rule" "my_sg_rule" {
  flow              = "Inbound"
  security_group_id = outscale_security_group.my_sg.id

  rules {
    from_port_range = "22"
    to_port_range   = "22"
    ip_protocol     = "tcp"
    ip_ranges       = var.allowed_cidr  # Plage d'IP autorisée pour la règle
  }
}

output "security_group_id" {
  value = outscale_security_group.my_sg.id  # ID du groupe de sécurité créé
}

output "security_group_rule_id" {
  value = outscale_security_group_rule.my_sg_rule.id  # ID de la règle de sécurité
}
