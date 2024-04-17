module "context_choco_azure_dev" {
  source = "../.."

  #Common
  environment = {
    azure = ["dev", "tst", "ppr", "prd"]
    aws = ["dev", "tst", "ppr", "prd"]
    gcp = ["dev", "tst", "ppr", "prd"]
    oci = ["dev", "tst", "ppr", "prd"]
    onprem = ["frankfurt"]
  }
  region      = "germanywestcentral"

  #General
  department = "sales"
  project    = "dark"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "mild"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "context_choco_azure_dev" {
  value = module.context_choco_azure_dev.context
}
output "all_choco" {
  value = module.context_choco_azure_dev.all_choco
}
