locals {
  #Dynamic regions data from var.azure_regions input
  azure_regions_dynamic = var.azure_regions != null ? { for region in var.azure_regions : region.name => region } : null

  #Static regions map with Zone Aware (Recommended) regions
  azure_regions_static_zone_aware = {
    #United States
    eastus         = "eus"
    eastus2        = "eu2"
    southcentralus = "scu"
    centralus      = "cus"
    westus2        = "wu2"
    westus3        = "wu3"
    #Canada
    canadacentral = "cac"
    #South America
    brazilsouth = "brs"
    #Asia Pacific
    australiaeast = "aue"
    eastasia      = "eas"
    southeastasia = "sea"
    japaneast     = "jpe"
    koreacentral  = "koc"
    centralindia  = "cin"
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
    #Middle East
    israelcentral = "isc"
    uaenorth      = "uan"
    qatarcentral  = "qac"
    #Africa
    southafricanorth = "san"
  }

  #Static regions map with No Zone regions
  azure_regions_static_no_zone = {
    #United States
    northcentralus = "ncu"
    westus         = "wus"
    westcentralus  = "wcu"
    #Canada
    canadaeast = "cae"
    #South America
    brazilusouth    = "bus"
    brazilsoutheast = "bse"
    #Asia Pacific
    australiacentral   = "auc"
    australiacentral2  = "au2"
    australiasoutheast = "aus"
    japanwest          = "jpw"
    koreasouth         = "kos"
    southindia         = "sin"
    westindia          = "win"
    jioindiawest       = "jiw"
    jioindiacentral    = "jic"
    #Europe
    ukwest          = "ukw"
    francesouth     = "frs"
    germanynorth    = "gno"
    norwaywest      = "now"
    switzerlandwest = "chw"
    #Middle East
    uaecentral = "uac"
    #Africa
    southafricawest = "saw"
  }

  #Merged Short Regions Map
  azure_short_regions = var.azure_region_recommended_only ? local.azure_regions_static_zone_aware : merge(local.azure_regions_static_no_zone, local.azure_regions_static_zone_aware)

}
output "azure_short_regions" {
  value       = local.azure_short_regions
  description = "FOR DEVELOPMENT"
}
