locals {
  #Dynamic regions from var.azure_regions input
  azure_regions_dynamic = var.azure_regions != null ? { for region in var.azure_regions : region.name => region.key } : null

  #Static regions map used when dynamic entry is not available
  azure_regions_static = {
    #United States
    eastus             = "eus"
    eastus2            = "eu2"
    southcentralus     = "scu"
    centralus          = "cus"
    westus2            = "wu2"
    westus3            = "wu3"
    #Canada
    canadacentral      = "cac"
    brazilsouth        = "brs"
    #Asia Pacific
    australiaeast      = "aue"
    eastasia           = "eas"
    southeastasia      = "sea"
    japaneast          = "jae"
    koreacentral       = "koc"
    centralindia       = "cin"
    #Europe
    northeurope        = "neu"
    norwayeast         = "noe"
    swedencentral      = "swc"
    uksouth            = "uks"
    westeurope         = "weu"
    francecentral      = "frc"
    germanywestcentral = "gwc"
    italynorth         = "itn"
    polandcentral      = "plc"
    switzerlandnorth   = "chn"
    #MIDDLE EAST
    israelcentral      = "isc"
    uaenorth           = "uan"
    qatarcentral       = "qac"
    #AFRICA
    southafricanorth   = "san"
  }

  #Short Regions Map
  azure_short_regions = coalesce(local.azure_regions_dynamic, local.azure_regions_static)
}

output "azure_short_regions" {
  value       = local.azure_short_regions
  description = "FOR DEVELOPMENT"
}