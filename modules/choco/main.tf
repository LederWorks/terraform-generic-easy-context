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
  cloud = var.cloud
  #Environments
  environment        = var.environment
  environment_azure  = var.environment_azure
  environment_aws    = var.environment_aws
  environment_gcp    = var.environment_gcp
  environment_oci    = var.environment_oci
  environment_onprem = var.environment_onprem
  region             = var.region

  #Context
  context = merge(
    {
      cloud              = local.cloud,
      # environment        = local.environment,
      # environment_azure  = local.environment_azure,
      # environment_aws    = local.environment_aws,
      # environment_gcp    = local.environment_gcp,
      # environment_oci    = local.environment_oci,
      # environment_onprem = local.environment_onprem,
      region             = local.region,
    },
    local.environment != null ? {
      environment = local.environment
    } : {},
    local.environment_azure != null ? {
      environment_azure = local.environment_azure
    } : {},
    local.environment_aws != null ? {
      environment_aws = local.environment_aws
    } : {},
    local.environment_gcp != null ? {
      environment_gcp = local.environment_gcp
    } : {},
    local.environment_oci != null ? {
      environment_oci = local.environment_oci
    } : {},
    local.environment_onprem != null ? {
      environment_onprem = local.environment_onprem
    } : {},
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
        local.onprem_env[local.environment_onprem]
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
