environment = "dev"
location    = "uksouth"

resource_groups = {
  workload = "rg-poc-dev"
}

defaults = {
  plan_sku = "B1"
  tags = {
    application = "poc"
    environment = "dev"
    managedBy   = "terraform"
  }
}
