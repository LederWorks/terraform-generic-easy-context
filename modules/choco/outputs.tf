#Context
output "context" {
  value = local.context
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