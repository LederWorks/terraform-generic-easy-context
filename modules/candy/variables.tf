#  $$$$$$\   $$$$$$\  $$\      $$\ $$\      $$\  $$$$$$\  $$\   $$\ 
# $$  __$$\ $$  __$$\ $$$\    $$$ |$$$\    $$$ |$$  __$$\ $$$\  $$ |
# $$ /  \__|$$ /  $$ |$$$$\  $$$$ |$$$$\  $$$$ |$$ /  $$ |$$$$\ $$ |
# $$ |      $$ |  $$ |$$\$$\$$ $$ |$$\$$\$$ $$ |$$ |  $$ |$$ $$\$$ |
# $$ |      $$ |  $$ |$$ \$$$  $$ |$$ \$$$  $$ |$$ |  $$ |$$ \$$$$ |
# $$ |  $$\ $$ |  $$ |$$ |\$  /$$ |$$ |\$  /$$ |$$ |  $$ |$$ |\$$$ |
# \$$$$$$  | $$$$$$  |$$ | \_/ $$ |$$ | \_/ $$ | $$$$$$  |$$ | \$$ |
#  \______/  \______/ \__|     \__|\__|     \__| \______/ \__|  \__|

#Subsidiary
variable "subsidiary" {
  type        = string
  default     = "candy"
  description = "Subsidiary"
}

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

#Regions
variable "region" {
  type        = string
  description = "Cloud Region"
  validation {
    condition = contains([
      "eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral",              #Azure
      "us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1", #OCI
    ], var.region)
    error_message = <<EOT
    Valid values for the regions are:
    azure  = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    oci    = ["us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
    EOT
  }
}

variable "azure_regions" {
  type        = any
  description = "Short region map for Azure."
}

variable "oci_regions" {
  type        = any
  description = "Short region map for OCI."
}

#Project
variable "project" {
  type        = string
  description = "Project code"
  validation {
    condition     = (var.project == "") || (can(regex("^[A-Za-z0-9]{2,}$", var.project)))
    error_message = "Only alphanumeric characters are allowed and project code should contain at least two characters."
  }
}

#Department
variable "department" {
  type        = string
  description = "Department"
}

#Tags
variable "tags" {
  type        = map(string)
  description = "Resource Tags"
}
