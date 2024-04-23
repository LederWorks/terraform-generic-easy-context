#Regions
locals {
  oci_short_regions = { for region in var.oci_regions : region.name => region.key}
}

output "oci_short_regions" {
  value = local.oci_short_regions
}