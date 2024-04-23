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
    condition     = contains([
      "eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral",                #Azure
      "us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1", #OCI
    ], var.region)
    error_message = <<EOT
    Valid values for the regions are:
    azure  = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    oci    = ["us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
    EOT
  }
}

variable "oci_regions" {
  type = any
  description = "Short region map for OCI."
}
