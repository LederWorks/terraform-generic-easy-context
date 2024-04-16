############################
#### Subsidiary Modules ####
############################

#Chocolate Factory
module "choco" {
  count       = local.subsidiary == "choco" ? 1 : 0
  source      = "./modules/choco"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Candy Shop
module "candy" {
  count       = local.subsidiary == "candy" ? 1 : 0
  source      = "./modules/candy"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Icecream Industries
module "icecream" {
  count       = local.subsidiary == "icecream" ? 1 : 0
  source      = "./modules/icecream"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Muffin Manufactures
module "muffin" {
  count       = local.subsidiary == "muffin" ? 1 : 0
  source      = "./modules/muffin"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Waffel Works
module "waffel" {
  count       = local.subsidiary == "waffel" ? 1 : 0
  source      = "./modules/waffel"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}
