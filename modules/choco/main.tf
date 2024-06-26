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
  project     = var.project
  department  = var.department
  tags        = var.tags

  #Context
  context = merge(
    {
      cloud         = local.cloud,
      environment   = local.environment,
      region        = local.region,
      cloud_regions = local.cloud_regions,
      short_region  = local.short_region,
      project       = local.project,
      department    = local.department,
      tags          = local.tags,
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
