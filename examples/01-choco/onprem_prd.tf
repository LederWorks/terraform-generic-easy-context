module "context_choco_onprem_prd" {
  source = "../.."

  #Common
  cloud       = "onprem"
  environment = "prd"
  region      = "frankfurt"

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