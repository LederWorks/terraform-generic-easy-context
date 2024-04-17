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
    oci    = ["us-ashburn-1", "us-phoenix-1 ", "us-sanjose-1 ", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
    onprem = ["us-central", "us-east", "us-west", "eu-central", "eu-west", "eu-north"]
  }
  cloud_regions = local.regions[local.cloud]

  #Context
  context = merge(
    {
      cloud       = local.cloud,
      environment = local.environment,
      region      = local.region,
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
