#  $$$$$$\  $$\   $$\ $$$$$$$\  $$$$$$$\  $$$$$$$$\ $$\      $$\       $$$$$$$$\ $$\   $$\ $$\    $$\ 
# $$  __$$\ $$$\  $$ |$$  __$$\ $$  __$$\ $$  _____|$$$\    $$$ |      $$  _____|$$$\  $$ |$$ |   $$ |
# $$ /  $$ |$$$$\ $$ |$$ |  $$ |$$ |  $$ |$$ |      $$$$\  $$$$ |      $$ |      $$$$\ $$ |$$ |   $$ |
# $$ |  $$ |$$ $$\$$ |$$$$$$$  |$$$$$$$  |$$$$$\    $$\$$\$$ $$ |      $$$$$\    $$ $$\$$ |\$$\  $$  |
# $$ |  $$ |$$ \$$$$ |$$  ____/ $$  __$$< $$  __|   $$ \$$$  $$ |      $$  __|   $$ \$$$$ | \$$\$$  / 
# $$ |  $$ |$$ |\$$$ |$$ |      $$ |  $$ |$$ |      $$ |\$  /$$ |      $$ |      $$ |\$$$ |  \$$$  /  
#  $$$$$$  |$$ | \$$ |$$ |      $$ |  $$ |$$$$$$$$\ $$ | \_/ $$ |      $$$$$$$$\ $$ | \$$ |   \$  /   
#  \______/ \__|  \__|\__|      \__|  \__|\________|\__|     \__|      \________|\__|  \__|    \_/    

locals {
  onprem_env = {
    dev = {
      splunk_server = {
        northeurope        = "northeurope only valid for azure"
        westeurope         = "northeurope only valid for azure"
        germanywestcentral = "northeurope only valid for azure"
        frankfurt          = "splunk-dev-01.choco.me"
      }[local.region]

    }

    tst = {
      splunk_server = {
        northeurope        = "northeurope only valid for azure"
        westeurope         = "northeurope only valid for azure"
        germanywestcentral = "northeurope only valid for azure"
        frankfurt          = "splunk-tst-01.choco.me"
      }[local.region]
    }

    ppr = {
      splunk_server = {
        northeurope        = "northeurope only valid for azure"
        westeurope         = "northeurope only valid for azure"
        germanywestcentral = "northeurope only valid for azure"
        frankfurt          = "splunk-ppr-01.choco.me"
      }[local.region]
    }

    prd = {
      splunk_server = {
        northeurope        = "northeurope only valid for azure"
        westeurope         = "northeurope only valid for azure"
        germanywestcentral = "northeurope only valid for azure"
        frankfurt          = "splunk-prd-01.choco.me"
      }[local.region]
    }
  }
}