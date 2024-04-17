# module "context_choco_aws_ppr" {
#   source = "../.."

#   #Common
#   cloud       = "aws"
#   environment = "ppr"
#   region      = "northeurope"

#   #General
#   department = "legal"
#   project    = "cocoa"
#   tags = {
#     OwnerContact = "wonka@choco.me"
#     OwnerOU      = "choco"
#     Sweetness    = "very"
#   }
#   custom_tags = {
#     HQ = "Brussels"
#   }
# }
# output "context_choco_aws_ppr" {
#   value = module.context_choco_aws_ppr.context
# }
