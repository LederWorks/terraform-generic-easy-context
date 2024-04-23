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
  validation {
    condition     = contains(["choco", "candy", "icecream", "muffin", "waffel"], var.subsidiary)
    error_message = "Only choco, candy, icecream, muffin and waffel are supported as a subsidiary."
  }
}

#Cloud
variable "cloud" {
  type        = string
  description = "Cloud Provider. Possible values are azure, aws, gcp, oci and onprem."
  default     = "azure"
}

#Environments
variable "environment" {
  type        = string
  description = "Environment - place in the SDLC lifecycle"
}

#Region
variable "region" {
  type        = string
  description = "Cloud Region"
}

#  $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$$\ $$$$$$$\   $$$$$$\  $$\       
# $$  __$$\ $$  _____|$$$\  $$ |$$  _____|$$  __$$\ $$  __$$\ $$ |      
# $$ /  \__|$$ |      $$$$\ $$ |$$ |      $$ |  $$ |$$ /  $$ |$$ |      
# $$ |$$$$\ $$$$$\    $$ $$\$$ |$$$$$\    $$$$$$$  |$$$$$$$$ |$$ |      
# $$ |\_$$ |$$  __|   $$ \$$$$ |$$  __|   $$  __$$< $$  __$$ |$$ |      
# $$ |  $$ |$$ |      $$ |\$$$ |$$ |      $$ |  $$ |$$ |  $$ |$$ |      
# \$$$$$$  |$$$$$$$$\ $$ | \$$ |$$$$$$$$\ $$ |  $$ |$$ |  $$ |$$$$$$$$\ 
#  \______/ \________|\__|  \__|\________|\__|  \__|\__|  \__|\________|

variable "project" {
  type        = string
  default     = ""
  description = "Project code"
  validation {
    condition     = (var.project == "") || (can(regex("^[A-Za-z0-9]{2,}$", var.project)))
    error_message = "Only alphanumeric characters are allowed and project code should contain at least two characters."
  }
}

variable "department" {
  type        = string
  default     = ""
  description = "Department"
}

variable "tags" {
  type = object({
    OwnerOU      = string
    OwnerContact = string
    Sweetness    = string
  })
  description = "Mandatory resource tags. These tags take precendence over custom_tags in case the same tag is duplicate."
}

variable "custom_tags" {
  type        = map(any)
  default     = {}
  description = "Custom Resource tags"
}

# $$$$$$$\  $$$$$$$$\  $$$$$$\  $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
# $$  __$$\ $$  _____|$$  __$$\ \_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
# $$ |  $$ |$$ |      $$ /  \__|  $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
# $$$$$$$  |$$$$$\    $$ |$$$$\   $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
# $$  __$$< $$  __|   $$ |\_$$ |  $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
# $$ |  $$ |$$ |      $$ |  $$ |  $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
# $$ |  $$ |$$$$$$$$\ \$$$$$$  |$$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
# \__|  \__|\________| \______/ \______| \______/ \__|  \__| \______/ 

variable "azure_region_recommended_only" {
  type        = bool
  default     = true
  description = "(Optional) Only return recommended regions for Azure."
}

variable "azure_regions" {
  type        = any
  default     = null
  description = <<EOT
  You can use this variable to dynamically populate data for all available regions in Azure.

  You can use the https://github.com/Azure/terraform-azurerm-regions module with the Azure/azapi provider:

  ```hcl
  module "regions" {
    source  = "Azure/regions/azurerm"
    version = "0.6.0"
  }
  ```

  And feed the output of the module to the context module:

  ```hcl
  module "context" {
    azure_regions = module.regions.regions
  }
  ```
  EOT
}

variable "oci_regions" {
  type        = any
  default     = null
  description = <<EOT
  You can use this variable to dynamically define the region short codes for all available regions in OCI.

  ```hcl
  data "oci_identity_regions" "regions" {}

  module "context" {
    oci_regions = data.oci_identity_regions.regions.regions
  }
  ```
  EOT
}
