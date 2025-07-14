# monorepo/main.tf
# Terraform entrypoint for provisioning multi-vendor network infrastructure

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    infoblox = {
      source  = "community/infoblox"
      version = ">= 0.3.0"
    }
    f5 = {
      source  = "F5Networks/f5"
      version = ">= 1.0.0"
    }
    zscaler = {
      source  = "zscaler/zia"
      version = ">= 0.1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "infoblox" {
  username = var.infoblox_username
  password = var.infoblox_password
  server   = var.infoblox_server
}

provider "f5" {
  address  = var.f5_address
  username = var.f5_username
  password = var.f5_password
}

provider "zscaler" {
  username = var.zscaler_username
  password = var.zscaler_password
  api_key  = var.zscaler_api_key
}

# Core modules
module "aci" {
  source = "./modules/aci"
}

module "ios" {
  source = "./modules/cisco_ios"
}

module "paloalto" {
  source = "./modules/paloalto"
}

module "azure" {
  source = "./modules/azure"
}

module "infoblox" {
  source = "./modules/infoblox"
}

module "f5" {
  source = "./modules/f5"
}

module "zscaler" {
  source = "./modules/zscaler"
}

# Optional modules

module "checkpoint" {
  source = "./modules/checkpoint"
}

module "fortinet" {
  source = "./modules/fortinet"
}

module "juniper" {
  source = "./modules/juniper"
}

module "sd_access" {
  source = "./modules/sd_access"
}

output "status" {
  value = "✅ Provisioning completed. Check individual module outputs for details."
}
