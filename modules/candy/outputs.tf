#context
output "context" {
  value = local.context
}

#Direct Data Access
output "azure" {
  value = local.azure
}
output "oci" {
  value = local.oci
}
