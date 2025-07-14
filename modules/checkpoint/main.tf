resource "checkpoint_host" "mgmt_host" {
  name       = var.host_name
  ip_address = var.ip_address
}
