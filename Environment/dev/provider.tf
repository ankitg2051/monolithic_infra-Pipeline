terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "goyal-rg-backend"
    storage_account_name = "goyalrgbackend"
    container_name = "contbackend"
    key = "dev/terraform.tfvars"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "86435d4d-556b-4d8e-bca6-1128180be503"
}