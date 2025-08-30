terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }

  backend "azurerm" {
        resource_group_name   = "azDevTFTestrg01"
        storage_account_name  = "racrazdevopstest01"
        container_name        = "githubtfstate"
        key                   = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "eb2983fa-21a2-4b3f-a2ab-20e905889934"
}

