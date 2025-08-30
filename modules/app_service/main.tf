resource "azurerm_service_plan" "this" {
  name                = var.app.plan.name
  resource_group_name = var.app.rg
  location            = var.app.loc
  os_type             = var.app.plan.os_type
  sku_name            = var.app.plan.sku_name
  worker_count        = var.app.plan.worker_count
  tags                = var.app.tags
}

resource "azurerm_linux_web_app" "this" {
  name                = var.app.name
  resource_group_name = var.app.rg
  location            = var.app.loc
  service_plan_id     = azurerm_service_plan.this.id
  https_only          = var.app.https_only
  tags                = var.app.tags

  app_settings = var.app.app_settings

  site_config {
    always_on = var.app.always_on

    application_stack {
      node_version = var.app.stack.node_version
    }
  }
}
