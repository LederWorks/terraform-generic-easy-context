module "context_choco_azure_dev" {
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

  #Regions
  oci_regions = data.oci_identity_regions.regions.regions
}
output "azure_dev_context" {
  value = module.context_choco_azure_dev.context
}
