resource "null_resource" "sda_fabric_deploy" {
  provisioner "local-exec" {
    command = "python3 scripts/deploy_sda_fabric.py --site ${var.site_name}"
  }
}
