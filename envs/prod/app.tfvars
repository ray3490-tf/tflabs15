webapp = {
  name = "poc-web-prod"
  plan = {
    # name omitted -> defaults to "<app-name>-plan"
    sku_name     = "S1"
    os_type      = "Linux"
    worker_count = 2
  }
  app_settings = { WEBSITES_PORT = "8080" }
  stack = { node_version = "18-lts" }
  https_only = true
  always_on  = true
}
