resource "infoblox_host_record" "dns_record" {
  name = var.hostname
  ipv4addrs {
    ipv4addr = var.ipv4addr
  }
}
