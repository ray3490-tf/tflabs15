# 1) Always create/manage the Resource Group first
module "rg" {
  source   = "./modules/resource_group"
  name     = local.webapp_effective.rg
  location = local.webapp_effective.loc
  tags     = local.webapp_effective.tags
}

# 2) Then deploy the App Service Plan + Linux Web App
#    Make the app depend on the RG by referencing module outputs
module "app" {
  source = "./modules/app_service"
  app = merge(local.webapp_effective, {
    rg  = module.rg.name
    loc = module.rg.location
  })
}
