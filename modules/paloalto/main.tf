resource "paloalto_address_object" "core_firewall_obj" {
  name        = var.object_name
  value       = var.object_value
  description = "Managed by Terraform"
}
