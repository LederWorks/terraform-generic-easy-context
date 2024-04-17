module "context_choco_azure_dev" {
  source = "../.."

  #Common
  subsidiary  = "choco"
  cloud       = "azure"
  environment = "dev"
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
