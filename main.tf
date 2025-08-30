module "app" {
  source = "./modules/app_service"
  app    = local.webapp_effective
}
