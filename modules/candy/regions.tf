locals {
  #Input Parameters
  azure_regions = var.azure_regions
  oci_regions = var.oci_regions

  #Regions
  regions = {
    azure = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    oci   = ["us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
  }

  #Check whether the region is valid for the cloud provider
  cloud_regions   = local.regions[local.cloud]
  is_valid_region = contains(local.cloud_regions, local.region)

  #Check whether specific clouds are valid for the region
  is_valid_azure_region = contains(local.regions["azure"], local.region)
  is_valid_oci_region   = contains(local.regions["oci"], local.region)

  #Short Regions
  short_region = {
    #Azure using a central set of short region codes, which is sourced statically
    azure = local.is_valid_azure_region ? local.azure_regions[local.region] : null

    #OCI now uses a central set of short region codes, which can be sourced both dynamically and statically
    oci = local.is_valid_oci_region ? local.oci_regions[local.region] : null

  }[local.cloud]

}