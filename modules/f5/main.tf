resource "f5_ltm_virtual_server" "web_vs" {
  name        = var.vs_name
  destination = var.destination
}