environment = "uat"
location    = "uksouth"

resource_groups = {
  workload = "rg-poc-uat"
}

defaults = {
  plan_sku = "S1"
  tags = {
    application = "poc"
    environment = "uat"
    managedBy   = "terraform"
  }
}
