/* module "context_choco_azure_dev" {
  source = "../.."

  #Common
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
output "azure_dev_cloud_regions" {
  value = module.context_choco_azure_dev.cloud_regions
}
output "azure_dev_is_valid_region" {
  value = module.context_choco_azure_dev.is_valid_region
}
output "all_choco" {
  value = module.context_choco_azure_dev.all_choco
}
 */