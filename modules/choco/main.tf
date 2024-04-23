#  $$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\   $$$$$$\  
# $$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\ $$  __$$\ 
# $$ /  \__|$$ |  $$ |$$ /  $$ |$$ /  \__|$$ /  $$ |
# $$ |      $$$$$$$$ |$$ |  $$ |$$ |      $$ |  $$ |
# $$ |      $$  __$$ |$$ |  $$ |$$ |      $$ |  $$ |
# $$ |  $$\ $$ |  $$ |$$ |  $$ |$$ |  $$\ $$ |  $$ |
# \$$$$$$  |$$ |  $$ | $$$$$$  |\$$$$$$  | $$$$$$  |
#  \______/ \__|  \__| \______/  \______/  \______/ 

locals {
  #Input Parameters
  cloud       = var.cloud
  environment = var.environment
  region      = var.region

  #Regions
  regions = {
    azure  = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    aws    = ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "eu-north-1"]
    gcp    = ["us-central1", "us-east1", "us-west1", "europe-west1", "europe-west2", "europe-west3"]
    oci    = ["us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
    onprem = ["us-central", "us-east", "us-west", "eu-central", "eu-west", "eu-north"]
  }

  #Check whether the region is valid for the cloud provider
  cloud_regions   = local.regions[local.cloud]
  is_valid_region = contains(local.cloud_regions, local.region)

  #Check whether specific clouds are valid for the region
  is_valid_azure_region  = contains(local.regions["azure"], local.region)
  is_valid_aws_region    = contains(local.regions["aws"], local.region)
  is_valid_gcp_region    = contains(local.regions["gcp"], local.region)
  is_valid_oci_region    = contains(local.regions["oci"], local.region)
  is_valid_onprem_region = contains(local.regions["onprem"], local.region)

  #Short Regions
  short_region = {
    azure = local.is_valid_azure_region ? {
      eastus2            = "eu2"
      centralus          = "cus"
      westus2            = "wu2"
      northeurope        = "neu"
      westeurope         = "weu"
      germanywestcentral = "gwc"
    }[local.region] : null

    aws = local.is_valid_aws_region ? {
      "us-east-1"   = "ue1"
      "us-west-1"   = "uw1"
      "us-west-2"   = "uw2"
      "eu-west-1"   = "ew1"
      "eu-central-1" = "ec1"
      "eu-north-1"  = "en1"
    }[local.region] : null

    gcp = local.is_valid_gcp_region ? {
      "us-central1"   = "uc1"
      "us-east1"      = "ue1"
      "us-west1"      = "uw1"
      "europe-west1"  = "ew1"
      "europe-west2"  = "ew2"
      "europe-west3"  = "ew3"
    }[local.region] : null

    oci = local.is_valid_oci_region ? {
      "us-ashburn-1"  = "ua1"
      "us-phoenix-1"  = "up1"
      "us-sanjose-1"  = "usj1"
      "eu-frankfurt-1" = "ef1"
      "eu-amsterdam-1" = "ea1"
      "eu-london-1"    = "el1"
    }[local.region] : null

    onprem = local.is_valid_onprem_region ? {
      "us-central" = "usc"
      "us-east"    = "use"
      "us-west"    = "usw"
      "eu-central" = "euc"
      "eu-west"    = "euw"
      "eu-north"   = "eun"
    }[local.region] : null

  }[local.cloud]

  #Context
  context = merge(
    {
      cloud         = local.cloud,
      environment   = local.environment,
      region        = local.region,
      cloud_regions = local.cloud_regions,
      short_region  = local.short_region,
    },
    local.global,
    {
      azure = merge(
        local.azure_global,
        local.azure_env[local.environment]
      )
      aws = merge(
        local.aws_global,
        local.aws_env[local.environment]
      )
      gcp = merge(
        local.gcp_global,
        local.gcp_env[local.environment]
      )
      oci = merge(
        local.oci_global,
        local.oci_env[local.environment]
      )
      onprem = merge(
        local.onprem_global,
        local.onprem_env[local.environment]
      )
    }[local.cloud]
  )

  #Direct Data Access
  azure  = merge(local.azure_global, local.azure_env)
  aws    = merge(local.aws_global, local.aws_env)
  gcp    = merge(local.gcp_global, local.gcp_env)
  oci    = merge(local.oci_global, local.oci_env)
  onprem = merge(local.onprem_global, local.onprem_env)

}
