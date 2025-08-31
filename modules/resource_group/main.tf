/*
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm" }
  }
}
*/

resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  tags     = var.tags
/*
  # Safer defaults for shared RGs
  lifecycle {
    prevent_destroy = true
  }
  */
}
