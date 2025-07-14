# terraform.tfvars.example
# Example variable values for multi-vendor Terraform infrastructure

# Azure
rg_name   = "core-network-rg"
location  = "East US"

# Infoblox
dns_hostname = "core-host01"
ipv4addr     = "192.168.10.50"

infoblox_username = "admin"
infoblox_password = "securepass"
infoblox_server   = "infoblox.example.local"

# F5
f5_address  = "10.0.1.20"
f5_username = "admin"
f5_password = "adminpass"
vs_name     = "web-virtual-server"
destination = "10.0.1.100:80"

# Zscaler
zscaler_username = "zuser@example.com"
zscaler_password = "zsecurepass"
zscaler_api_key  = "your_zscaler_api_key"
rule_name        = "Allow-HTTP"

# ACI
tenant_name = "NetOps-Tenant"

# Cisco IOS
device_ip = "192.168.100.10"
username  = "cisco"
password  = "cisco123"

# Palo Alto
object_name  = "trust-zone"
object_value = "10.10.10.0/24"

# Check Point
host_name  = "mgmt-gateway"
ip_address = "192.168.30.1"

# Fortinet
addr_name = "trusted-subnet"
subnet    = "172.16.1.0/24"

# Juniper
device_ip = "192.168.50.2"
username  = "juniper"
password  = "juniper123"

# SD-Access
site_name = "Nairobi-Core"
