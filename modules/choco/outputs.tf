#Context
output "context" {
  value = local.context
}

#Regions
output "cloud_regions" {
  value = local.cloud_regions
}
output "is_valid_region" {
  value = local.is_valid_region
}

#Direct Data Access
output "azure" {
  value = local.azure
}
output "aws" {
  value = local.aws
}
output "gcp" {
  value = local.gcp
}
output "oci" {
  value = local.oci
}
output "onprem" {
  value = local.onprem
}