resource "zscaler_zia_firewall_filtering_rule" "allow_http_rule" {
  name   = var.rule_name
  action = "ALLOW"
}
