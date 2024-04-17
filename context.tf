############################
#### Subsidiary Context ####
############################
locals {
  #Context
  context = {
    choco    = local.subsidiary == "choco" ? module.choco[0].context : null       # Brussels Chocolate Factory
    candy    = local.subsidiary == "candy" ? module.candy[0].context : null       # Cologne Candy Shop
    # icecream = local.subsidiary == "icecream" ? module.icecream[0].context : null # Istanbul Icecream Industries
    # muffin   = local.subsidiary == "muffin" ? module.muffin[0].context : null     # London Muffin Manufactures
    # waffel   = local.subsidiary == "waffel" ? module.candy[0].context : null      # Amsterdam Waffel Works
  }[local.subsidiary]

  #Direct Data Access
  all_choco = local.subsidiary == "choco" ? {
    azure  = module.choco[0].azure
    aws    = module.choco[0].aws
    gcp    = module.choco[0].gcp
    oci    = module.choco[0].oci
    onprem = module.choco[0].onprem
  } : null

  all_candy = local.subsidiary == "candy" ? {
    azure  = module.candy[0].azure
    oci    = module.candy[0].oci
  } : null

  # all_icecream = local.subsidiary == "icecream" ? {
  #   azure  = module.icecream[0].azure
  #   aws    = module.icecream[0].aws
  #   gcp    = module.icecream[0].gcp
  #   oci    = module.icecream[0].oci
  #   onprem = module.icecream[0].onprem
  # } : null

  # all_muffin = local.subsidiary == "muffin" ? {
  #   azure  = module.muffin[0].azure
  #   aws    = module.muffin[0].aws
  #   gcp    = module.muffin[0].gcp
  #   oci    = module.muffin[0].oci
  #   onprem = module.muffin[0].onprem
  # } : null

  # all_waffel = local.subsidiary == "waffel" ? {
  #   azure  = module.waffel[0].azure
  #   aws    = module.waffel[0].aws
  #   gcp    = module.waffel[0].gcp
  #   oci    = module.waffel[0].oci
  #   onprem = module.waffel[0].onprem
  # } : null
}


