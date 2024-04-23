#  $$$$$$\   $$$$$$\  $$$$$$\       $$$$$$$$\ $$\   $$\ $$\    $$\ 
# $$  __$$\ $$  __$$\ \_$$  _|      $$  _____|$$$\  $$ |$$ |   $$ |
# $$ /  $$ |$$ /  \__|  $$ |        $$ |      $$$$\ $$ |$$ |   $$ |
# $$ |  $$ |$$ |        $$ |        $$$$$\    $$ $$\$$ |\$$\  $$  |
# $$ |  $$ |$$ |        $$ |        $$  __|   $$ \$$$$ | \$$\$$  / 
# $$ |  $$ |$$ |  $$\   $$ |        $$ |      $$ |\$$$ |  \$$$  /  
#  $$$$$$  |\$$$$$$  |$$$$$$\       $$$$$$$$\ $$ | \$$ |   \$  /   
#  \______/  \______/ \______|      \________|\__|  \__|    \_/    

locals {
  oci_env = {
    int = {
      log_group_id = is_valid_oci_region ? {
        us-ashburn-1 = "ocid1.loggroup.oc1.iad.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
        us-phoenix-1 = "ocid1.loggroup.oc1.phx.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
        us-sanjose-1 = "ocid1.loggroup.oc1.sjc.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
        eu-frankfurt-1 = "ocid1.loggroup.oc1.eu-frankfurt-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
        eu-amsterdam-1 = "ocid1.loggroup.oc1.eu-amsterdam-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
        eu-london-1 = "ocid1.loggroup.oc1.eu-london-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaint"
      }[local.region] : null

    }

    uat = {
      log_group_id = is_valid_oci_region ? {
        us-ashburn-1 = "ocid1.loggroup.oc1.iad.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
        us-phoenix-1 = "ocid1.loggroup.oc1.phx.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
        us-sanjose-1 = "ocid1.loggroup.oc1.sjc.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
        eu-frankfurt-1 = "ocid1.loggroup.oc1.eu-frankfurt-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
        eu-amsterdam-1 = "ocid1.loggroup.oc1.eu-amsterdam-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
        eu-london-1 = "ocid1.loggroup.oc1.eu-london-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaauat"
      }[local.region] : null

    }

    prd = {
      log_group_id = is_valid_oci_region ? {
        us-ashburn-1 = "ocid1.loggroup.oc1.iad.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
        us-phoenix-1 = "ocid1.loggroup.oc1.phx.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
        us-sanjose-1 = "ocid1.loggroup.oc1.sjc.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
        eu-frankfurt-1 = "ocid1.loggroup.oc1.eu-frankfurt-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
        eu-amsterdam-1 = "ocid1.loggroup.oc1.eu-amsterdam-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
        eu-london-1 = "ocid1.loggroup.oc1.eu-london-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaprd"
      }[local.region] : null
    }
  }
}