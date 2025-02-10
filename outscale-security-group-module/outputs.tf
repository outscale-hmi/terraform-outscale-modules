output "security_group_id" {
  description = "ID du groupe de sécurité créé"
  value       = outscale_security_group.my_sg.id
}

output "security_group_rule_id" {
  description = "ID de la règle de sécurité"
  value       = outscale_security_group_rule.my_sg_rule.id
}
