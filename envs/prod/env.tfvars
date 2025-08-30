environment = "prod"
location    = "uksouth"

resource_groups = {
  workload = "rg-xva-prod"
}

defaults = {
  plan_sku = "P1v3"
  tags = {
    application = "xva"
    environment = "production"
    managedBy   = "terraform"
  }
}
