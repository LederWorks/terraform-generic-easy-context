module "context_choco_onprem_prd" {
  source = "../.."

  #Common
  cloud       = "onprem"
  environment = "prd"
  region      = "eu-central"

  #General
  department = "technology"
  project    = "erp"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "sparkling"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "context_choco_onprem_prd" {
  value = module.context_choco_onprem_prd.context
}
output "onprem_prd_cloud_regions" {
  value = module.context_choco_onprem_prd.cloud_regions
}
output "onprem_prd_is_valid_region" {
  value = module.context_choco_onprem_prd.is_valid_region
}
