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
  description = "Cloud Provider. Possible values are azure, aws, gcp, oci and onprem."
  validation {
    condition     = contains(["azure", "aws", "gcp", "oci", "onprem"], var.cloud)
    error_message = "Valid values for cloud provider are azure, aws, gcp, oci and onprem."
  }
}

#Environments
variable "environment" {
  type        = string
  description = "Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd."
  default = null
  validation {
    condition     = var.environment == null || contains(["dev", "tst", "ppr", "prd"], var.environment)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

variable "environment_azure" {
  type        = string
  description = "Azure Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd."
  default = null
  validation {
    condition     = var.environment_azure == null || contains(["dev", "tst", "ppr", "prd"], var.environment_azure)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

variable "environment_aws" {
  type        = string
  description = "AWS Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd."
  default = null
  validation {
    condition     = var.environment_aws == null || contains(["dev", "tst", "ppr", "prd"], var.environment_aws)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

variable "environment_gcp" {
  type        = string
  description = "GCP Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd."
  default = null
  validation {
    condition     = var.environment_gcp == null || contains(["dev", "tst", "ppr", "prd"], var.environment_gcp)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

variable "environment_oci" {
  type        = string
  description = "OCI Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd."
  default = null
  validation {
    condition     = var.environment_oci == null || contains(["dev", "tst", "ppr", "prd"], var.environment_oci)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

variable "environment_onprem" {
  type        = string
  description = "OnPrem Environment - place in the SDLC lifecycle. Valid values for environment: frankfurt."
  default = null
  validation {
    condition     = var.environment_onprem == null || contains(["frankfurt"], var.environment_onprem)
    error_message = "Valid values for environment: frankfurt"
  }
}
#Region
variable "region" {
  type        = string
  description = "Cloud Region. Valid values for the region: frankfurt, westeurope, northeurope and germanywestcentral."
  validation {
    condition     = contains(["frankfurt", "westeurope", "northeurope", "germanywestcentral"], var.region)
    error_message = "Valid values for the region: frankfurt, westeurope, northeurope and germanywestcentral"
  }
}
