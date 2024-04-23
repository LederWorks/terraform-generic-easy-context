#Regions
locals {
  #Dynamic regions from var.oci_regions input
  oci_regions_dynamic = var.oci_regions != null ? { for region in var.oci_regions : region.name => region.key} : null

  #Static regions map used when dynamic entry is not available
  oci_regions_static = {
    af-johannesburg-1 = "JNB"
    ap-chuncheon-1 = "YNY"
    ap-hyderabad-1 = "HYD"
    ap-melbourne-1 = "MEL"
    ap-mumbai-1 = "BOM"
    ap-osaka-1 = "KIX"
    ap-seoul-1 = "ICN"
    ap-singapore-1 = "SIN"
    ap-sydney-1 = "SYD"
    ap-tokyo-1 = "NRT"
    ca-montreal-1 = "YUL"
    ca-toronto-1 = "YYZ"
    eu-amsterdam-1 = "AMS"
    eu-frankfurt-1 = "FRA"
    eu-madrid-1 = "MAD"
    eu-marseille-1 = "MRS"
    eu-milan-1 = "LIN"
    eu-paris-1 = "CDG"
    eu-stockholm-1 = "ARN"
    eu-zurich-1 = "ZRH"
    il-jerusalem-1 = "MTZ"
    me-abudhabi-1 = "AUH"
    me-dubai-1 = "DXB"
    me-jeddah-1 = "JED"
    mx-monterrey-1 = "MTY"
    mx-queretaro-1 = "QRO"
    sa-bogota-1 = "BOG"
    sa-santiago-1 = "SCL"
    sa-saopaulo-1 = "GRU"
    sa-valparaiso-1 = "VAP"
    sa-vinhedo-1 = "VCP"
    uk-cardiff-1 = "CWL"
    uk-london-1 = "LHR"
    us-ashburn-1 = "IAD"
    us-chicago-1 = "ORD"
    us-phoenix-1 = "PHX"
    us-sanjose-1 = "SJC"
}

  #Short Regions Map
  oci_short_regions = coalesce(local.oci_regions_dynamic, local.oci_regions_static)
}

output "oci_short_regions" {
  value = local.oci_short_regions
  description = "FOR DEVELOPMENT"
}
