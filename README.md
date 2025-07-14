# terraform-multivendor-provisioning
Automated Terraform-based provisioning of multi-vendor network devices (Cisco, Palo Alto, Fortinet, Juniper, F5, Azure, Checkpoint, Infoblox, Zscaler, SD Access) and secure user access configuration across hybrid cloud and on-prem environments.

Project Structure Overview

terraform-multivendor-provisioning/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── modules/
│   ├── aci/
│   │   └── main.tf
│   ├── paloalto/
│   │   └── main.tf
│   ├── sdaccess/
│   │   └── main.tf
│   ├── ios-xe/
│   │   └── main.tf
│   ├── nxos/
│   │   └── main.tf
│   ├── fortinet/
│   │   └── main.tf
│   ├── checkpoint/
│   │   └── main.tf
│   ├── juniper/
│   │   └── main.tf
│   ├── azure/
│   │   └── main.tf
│   ├── zscaler/
│   │   └── main.tf
│   ├── f5/
│   │   └── main.tf
│   ├── infoblox/
│   │   └── main.tf
│   └── user-access/
│       └── main.tf
