locals {
  #Dynamic regions from var.azure_regions input
  azure_regions_dynamic = var.azure_regions != null ? { for region in var.azure_regions : region.name => region.key } : null
  
  #Static regions map used when dynamic entry is not available
  azure_regions_static = {
    eastus2 = "eu2"
    centralus = "cus"
    westus2 = "wu2"
    northeurope = "neu"
    westeurope = "weu"
    germanywestcentral = "gwc"
  }

  #Short Regions Map
  azure_short_regions = coalesce(local.azure_regions_dynamic, local.azure_regions_static)
}

output "azure_short_regions" {
  value       = local.azure_short_regions
  description = "FOR DEVELOPMENT"
}