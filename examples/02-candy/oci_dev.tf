module "context_candy_oci_int" {
  source = "../.."

  #Common
  subsidiary  = "candy"
  cloud       = "oci"
  environment = "int"
  region      = "us-phoenix-1"

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
output "context_candy_oci_int" {
  value = module.context_candy_oci_int.context
}
