/* module "context_candy_oci_dev" {
  source = "../.."

  #Common
  subsidiary  = "candy"
  cloud       = "oci"
  environment = "dev"
  region      = "frankfurt"

  #General
  department = "logistics"
  project    = "trucks"
  tags = {
    OwnerContact = "wonka@candy.me"
    OwnerOU      = "candy"
    Sweetness    = "very"
  }
  custom_tags = {
    HQ = "Cologne"
  }
}
output "context_choco_aws_ppr" {
  value = module.context_choco_aws_ppr.context
} */