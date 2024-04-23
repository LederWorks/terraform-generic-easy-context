module "context_candy_azure_prd" {
  source = "../.."

  #Common
  subsidiary  = "candy"
  cloud       = "azure"
  environment = "prd"
  region      = "westus2"

  #General
  department = "logistics"
  project    = "trucks"
  tags = {
    OwnerContact = "wonka@candy.me"
    OwnerOU      = "candy"
    Sweetness    = "very"
  }
  custom_tags = {
    HQ = "Cologne"
  }

  #Regions
  azure_regions = module.azure_regions.regions

}
output "context_candy_azure_prd" {
  value = module.context_candy_azure_prd.context
}
