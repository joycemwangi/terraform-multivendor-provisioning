resource "null_resource" "ios_config_push" {
  provisioner "local-exec" {
    command = "python3 scripts/push_ios_config.py ${var.device_ip} ${var.username} ${var.password}"
  }
}
