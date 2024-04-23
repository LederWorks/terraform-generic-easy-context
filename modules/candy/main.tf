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
      oci = merge(
        local.oci_global,
        local.oci_env[local.environment]
      )
    }[local.cloud]
  )

  #Direct Data Access
  azure = merge(local.azure_global, local.azure_env)
  oci   = merge(local.oci_global, local.oci_env)

}
