environment = "uat"
location    = "uksouth"

resource_groups = {
  workload = "rg-xva-uat"
}

defaults = {
  plan_sku = "S1"
  tags = {
    application = "xva"
    environment = "uat"
    managedBy   = "terraform"
  }
}
