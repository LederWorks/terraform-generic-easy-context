module "context_choco_gcp_tst" {
  source = "../.."

  #Common
  cloud       = "gcp"
  environment = "tst"
  region      = "westeurope"

  #General
  department = "marketing"
  project    = "milk"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "bitter"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "gcp_tst_context" {
  value = module.context_choco_gcp_tst.context
}
