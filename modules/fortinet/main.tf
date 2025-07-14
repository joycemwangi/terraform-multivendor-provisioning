resource "fortios_firewall_address" "trusted_net" {
  name   = var.addr_name
  subnet = var.subnet
}
