#  $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$\ $$\     $$\ 
# $$  __$$\ $$  __$$\ $$$\  $$ |$$  __$$\\$$\   $$  |
# $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ |  $$ |\$$\ $$  / 
# $$ |      $$$$$$$$ |$$ $$\$$ |$$ |  $$ | \$$$$  /  
# $$ |      $$  __$$ |$$ \$$$$ |$$ |  $$ |  \$$  /   
# $$ |  $$\ $$ |  $$ |$$ |\$$$ |$$ |  $$ |   $$ |    
# \$$$$$$  |$$ |  $$ |$$ | \$$ |$$$$$$$  |   $$ |    
#  \______/ \__|  \__|\__|  \__|\_______/    \__|    

locals {
  #Input Parameters
  cloud       = var.cloud
  environment = var.environment
  region      = var.region

  #Regions
  regions = {
    azure  = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    oci    = ["us-ashburn-1", "us-phoenix-1 ", "us-sanjose-1 ", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
  }

  #Check whether the region is valid for the cloud provider
  cloud_regions   = local.regions[local.cloud]
  is_valid_region = contains(local.cloud_regions, local.region)

  #Check whether specific clouds are valid for the region
  is_valid_azure_region  = contains(local.regions["azure"], local.region)
  is_valid_oci_region    = contains(local.regions["oci"], local.region)

  #Context
  context = merge(
    {
      cloud = local.cloud,
      environment = local.environment,
      region = local.region,
    },
    local.global,
    {
      azure = merge(
        local.azure_global,
        local.azure_env[local.environment]
      )
      oci = merge(
        local.oci_global,
        local.oci_env[local.environment]
      )
    }[local.cloud]
  )

  #Direct Data Access
  azure  = merge(local.azure_global, local.azure_env)
  oci    = merge(local.oci_global, local.oci_env)

}
