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
        us-central = "splunk-usc-dev-01.choco.me"
        us-east    = "splunk-use-dev-01.choco.me"
        us-west    = "splunk-usw-dev-01.choco.me"
        eu-central = "splunk-euc-dev-01.choco.me"
        eu-west    = "splunk-euw-dev-01.choco.me"
        eu-north   = "splunk-eun-dev-01.choco.me"
      }[local.cloud_regions]

    }

    tst = {
      splunk_server = {
        us-central = "splunk-usc-tst-01.choco.me"
        us-east    = "splunk-use-tst-01.choco.me"
        us-west    = "splunk-usw-tst-01.choco.me"
        eu-central = "splunk-euc-tst-01.choco.me"
        eu-west    = "splunk-euw-tst-01.choco.me"
        eu-north   = "splunk-eun-tst-01.choco.me"
      }[local.cloud_regions]
    }

    ppr = {
      splunk_server = {
        us-central = "splunk-usc-ppr-01.choco.me"
        us-east    = "splunk-use-ppr-01.choco.me"
        us-west    = "splunk-usw-ppr-01.choco.me"
        eu-central = "splunk-euc-ppr-01.choco.me"
        eu-west    = "splunk-euw-ppr-01.choco.me"
        eu-north   = "splunk-eun-ppr-01.choco.me"
      }[local.cloud_regions]
    }

    prd = {
      splunk_server = {
        us-central = "splunk-usc-prd-01.choco.me"
        us-east    = "splunk-use-prd-01.choco.me"
        us-west    = "splunk-usw-prd-01.choco.me"
        eu-central = "splunk-euc-prd-01.choco.me"
        eu-west    = "splunk-euw-prd-01.choco.me"
        eu-north   = "splunk-eun-prd-01.choco.me"
      }[local.cloud_regions]
    }
  }
}