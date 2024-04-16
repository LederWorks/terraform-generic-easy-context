################################
#### Subsidiary context ####
################################
locals {
  #context V2
  context = {
    sub01 = local.subsidiary == "sub01" ? module.sub01[0].context : null #Subsidiary 01
    sub02 = local.subsidiary == "sub02" ? module.sub02[0].context : null #Subsidiary 02
    sub03 = local.subsidiary == "sub03" ? module.obbg[0].context : null  #Subsidiary 03
    sub04 = local.subsidiary == "sub04" ? module.obhr[0].context : null  #Subsidiary 04
    sub05 = local.subsidiary == "sub05" ? module.sub02[0].context : null #Subsidiary 05
  }[local.subsidiary]

  #Direct Data Access V2
  all_sub01 = local.subsidiary == "sub01" ? {
    azure  = module.sub01[0].azure
    aws    = module.sub01[0].aws
    gcp    = module.sub01[0].gcp
    oci    = module.sub01[0].oci
    onprem = module.sub01[0].onprem
  } : null

  all_sub02 = local.subsidiary == "sub02" ? {
    azure  = module.sub02[0].azure
    aws    = module.sub02[0].aws
    gcp    = module.sub02[0].gcp
    oci    = module.sub02[0].oci
    onprem = module.sub02[0].onprem
  } : null

  all_sub03 = local.subsidiary == "sub03" ? {
    azure  = module.obbg[0].azure
    aws    = module.obbg[0].aws
    gcp    = module.obbg[0].gcp
    oci    = module.obbg[0].oci
    onprem = module.obbg[0].onprem
  } : null

  all_sub04 = local.subsidiary == "sub04" ? {
    azure  = module.obhr[0].azure
    aws    = module.obhr[0].aws
    gcp    = module.obhr[0].gcp
    oci    = module.obhr[0].oci
    onprem = module.obhr[0].onprem
  } : null

  all_sub05 = local.subsidiary == "sub05" ? {
    azure  = module.sub02[0].azure
    aws    = module.sub02[0].aws
    gcp    = module.sub02[0].gcp
    oci    = module.sub02[0].oci
    onprem = module.sub02[0].onprem
  } : null
}

############################
#### Subsidiary Modules ####
############################

#Subsidiary 01
module "sub01" {
  count       = local.subsidiary == "sub01" ? 1 : 0
  source      = "./modules/sub01"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Subsidiary 02
module "sub02" {
  count       = local.subsidiary == "sub02" ? 1 : 0
  source      = "./modules/sub02"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Subsidiary 03
module "sub03" {
  count       = local.subsidiary == "sub03" ? 1 : 0
  source      = "./modules/sub03"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Subsidiary 04
module "sub04" {
  count       = local.subsidiary == "sub04" ? 1 : 0
  source      = "./modules/sub04"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}

#Subsidiary 05
module "sub05" {
  count       = local.subsidiary == "sub05" ? 1 : 0
  source      = "./modules/sub05"
  cloud       = local.cloud
  environment = local.environment
  region      = local.region
}
