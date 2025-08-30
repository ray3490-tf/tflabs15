environment = "dev"
location    = "uksouth"

resource_groups = {
  workload = "rg-xva-dev"
}

defaults = {
  plan_sku = "B1"
  tags = {
    application = "xva"
    environment = "dev"
    managedBy   = "terraform"
  }
}
