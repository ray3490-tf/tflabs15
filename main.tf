module "rg" {
  source   = "./modules/resource_group"
  name     = local.webapp_effective.rg
  location = local.webapp_effective.loc
  tags     = local.webapp_effective.tags
}

module "app" {
  source = "./modules/app_service"
  app = merge(local.webapp_effective, {
    rg  = module.rg.name
    loc = module.rg.location
  })
}
