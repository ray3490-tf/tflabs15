terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "80a34eec-50a1-424f-bd5a-55323d766f5b"
  client_secret   = "-hS8Q~LZTRuTPMjdYGKO3uxF52H__rzP-8U9ea5b"
  tenant_id       = "ba1b6a3d-5614-420e-bb3c-edbe96bf124b"
  subscription_id = "eb2983fa-21a2-4b3f-a2ab-20e905889934"
}