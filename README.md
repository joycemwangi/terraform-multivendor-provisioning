# Terraform Provisioning Project

## Overview
This project contains Terraform configurations and supporting scripts to provision infrastructure.

## Project Structure
- `terraform_provisioning.tf` — Main Terraform configuration file
- `terraform.tfvars` — Variables values file for environment-specific settings
- `module/` — Reusable Terraform modules
- `script/` — Automation and helper scripts

## Prerequisites
- Terraform installed (version 1.0 or higher recommended)
- AWS CLI / Azure CLI / other cloud CLIs installed if applicable
- Appropriate permissions to provision infrastructure

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
