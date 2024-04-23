locals {
  subsidiary  = var.subsidiary
  cloud       = var.cloud
  region      = var.region
  environment = var.environment
  project     = var.project
  department  = var.department
  tags        = merge(var.custom_tags, var.tags)
}