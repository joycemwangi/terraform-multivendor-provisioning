resource "azurerm_resource_group" "core_rg" {
  name     = var.rg_name
  location = var.location
}
