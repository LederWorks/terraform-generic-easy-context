#  $$$$$$\   $$$$$$\  $$\      $$\ $$\      $$\  $$$$$$\  $$\   $$\ 
# $$  __$$\ $$  __$$\ $$$\    $$$ |$$$\    $$$ |$$  __$$\ $$$\  $$ |
# $$ /  \__|$$ /  $$ |$$$$\  $$$$ |$$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |
# $$ |      $$ |  $$ |$$\$$\$$ $$ |$$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |
# $$ |      $$ |  $$ |$$ \$$$  $$ |$$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |
# $$ |  $$\ $$ |  $$ |$$ |\$  /$$ |$$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |
# \$$$$$$  | $$$$$$  |$$ | \_/ $$ |$$ | \_/ $$ | $$$$$$  |$$ | \$$ |
#  \______/  \______/ \__|     \__|\__|     \__| \______/ \__|  \__|

#Cloud
variable "cloud" {
  type        = string
  description = "Cloud Provider. Possible values are azure and oci."
  validation {
    condition     = contains(["azure", "oci"], var.cloud)
    error_message = "Valid values for cloud provider are azure and oci."
  }
}

#Environment
variable "environment" {
  type        = string
  description = "Environment - place in the SDLC lifecycle"
  validation {
    condition     = contains(["int", "uat", "prd"], var.environment)
    error_message = "Valid values for environment: int, uat, prd"
  }
}

#Region
variable "region" {
  type        = string
  description = "Cloud Region"
  validation {
    condition     = contains(["westeurope", "northeurope", "germanywestcentral"], var.region)
    error_message = "Valid values for the region: westeurope, northeurope, germanywestcentral"
  }
}
