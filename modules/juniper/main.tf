resource "null_resource" "junos_config_push" {
  provisioner "local-exec" {
    command = "python3 scripts/push_junos_config.py ${var.device_ip} ${var.username} ${var.password}"
  }
}
