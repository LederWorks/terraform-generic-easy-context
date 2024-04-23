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
  default     = "choco"
  description = "Subsidiary"
}

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
  validation {
    condition     = contains(["dev", "tst", "ppr", "prd"], var.environment)
    error_message = "Valid values for environment: dev, tst, ppr, prd"
  }
}

#Regions
variable "region" {
  type        = string
  description = "Cloud Region. Valid values for the region: frankfurt, westeurope, northeurope and germanywestcentral."
  validation {
    condition = contains([
      "eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral",              #Azure
      "us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "eu-north-1",                  #AWS
      "us-central1", "us-east1", "us-west1", "europe-west1", "europe-west2", "europe-west3",             #GCP
      "us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1", #OCI
      "us-central", "us-east", "us-west", "eu-central", "eu-west", "eu-north"                            #OnPrem
    ], var.region)
    error_message = <<EOT
    Valid values for the regions are:
    azure  = ["eastus2", "centralus", "westus2", "northeurope", "westeurope", "germanywestcentral"]
    aws    = ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "eu-central-1", "eu-north-1"]
    gcp    = ["us-central1", "us-east1", "us-west1", "europe-west1", "europe-west2", "europe-west3"]
    oci    = ["us-ashburn-1", "us-phoenix-1", "us-sanjose-1", "eu-frankfurt-1", "eu-amsterdam-1", "eu-london-1"]
    onprem = ["us-central", "us-east", "us-west", "eu-central", "eu-west", "eu-north"]
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
