locals {
  
  webapp_effective = {
    name = var.webapp.name

    rg  = coalesce(try(var.webapp.resource_group_name, null), var.resource_groups.workload)
    loc = coalesce(try(var.webapp.location, null),            var.location)

    tags = merge(var.defaults.tags, coalesce(try(var.webapp.tags, null), {}))

    plan = {
      name         = coalesce(try(var.webapp.plan.name, null), "${var.webapp.name}-plan")
      sku_name     = coalesce(try(var.webapp.plan.sku_name, null), var.defaults.plan_sku)
      os_type      = coalesce(try(var.webapp.plan.os_type, null), "Linux")
      worker_count = coalesce(try(var.webapp.plan.worker_count, null), 1)
    }

    app_settings = coalesce(try(var.webapp.app_settings, null), {})

    stack = {
      node_version = coalesce(try(var.webapp.stack.node_version, null), "18-lts")
    }

    https_only = coalesce(try(var.webapp.https_only, null), true)
    always_on  = coalesce(try(var.webapp.always_on, null),  true)
  }
}
