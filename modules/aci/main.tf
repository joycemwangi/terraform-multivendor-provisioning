resource "aci_tenant" "netops_tenant" {
  name = var.tenant_name
  description = "Tenant created by Terraform"
}
