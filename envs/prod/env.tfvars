environment = "prod"
location    = "uksouth"

resource_groups = {
  workload = "rg-poc-prod"
}

defaults = {
  plan_sku = "S1"
  tags = {
    application = "poc"
    environment = "production"
    managedBy   = "terraform"
  }
}
