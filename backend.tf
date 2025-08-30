terraform {
    backend "azurerm" {
        resource_group_name   = "azDevTFTestrg01"
        storage_account_name  = "racrazdevopstest01"
        container_name        = "githubtfstate"
        key                   = "dev.terraform.tfstate"

    }
}



