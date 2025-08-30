webapp = {
  name = "xva-web-uat"
  plan = {
    # name omitted -> defaults to "<app-name>-plan"
    sku_name     = "B1"
    os_type      = "Linux"
    worker_count = 1
  }
  app_settings = { WEBSITES_PORT = "8080" }
  stack = { node_version = "18-lts" }
  https_only = true
  always_on  = true
}
