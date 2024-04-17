#  $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$\  $$$$$$$$\       $$$$$$$$\ $$\   $$\ $$\    $$\ 
# $$  __$$\ \____$$  |$$ |  $$ |$$  __$$\ $$  _____|      $$  _____|$$$\  $$ |$$ |   $$ |
# $$ /  $$ |    $$  / $$ |  $$ |$$ |  $$ |$$ |            $$ |      $$$$\ $$ |$$ |   $$ |
# $$$$$$$$ |   $$  /  $$ |  $$ |$$$$$$$  |$$$$$\          $$$$$\    $$ $$\$$ |\$$\  $$  |
# $$  __$$ |  $$  /   $$ |  $$ |$$  __$$< $$  __|         $$  __|   $$ \$$$$ | \$$\$$  / 
# $$ |  $$ | $$  /    $$ |  $$ |$$ |  $$ |$$ |            $$ |      $$ |\$$$ |  \$$$  /  
# $$ |  $$ |$$$$$$$$\ \$$$$$$  |$$ |  $$ |$$$$$$$$\       $$$$$$$$\ $$ | \$$ |   \$  /   
# \__|  \__|\________| \______/ \__|  \__|\________|      \________|\__|  \__|    \_/    

locals {
  azure_env = {

    # $$$$$$$\  $$$$$$$$\ $$\    $$\ 
    # $$  __$$\ $$  _____|$$ |   $$ |
    # $$ |  $$ |$$ |      $$ |   $$ |
    # $$ |  $$ |$$$$$\    \$$\  $$  |
    # $$ |  $$ |$$  __|    \$$\$$  / 
    # $$ |  $$ |$$ |        \$$$  /  
    # $$$$$$$  |$$$$$$$$\    \$  /   
    # \_______/ \________|    \_/    

    dev = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus2-dev-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-dev-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus2-dev-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-dev-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-dev-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-dev-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-dev-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-dev-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-dev-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-dev-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-dev-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-dev-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-win-01"
      }[local.region] : null
    }

    # $$$$$$$$\  $$$$$$\ $$$$$$$$\ 
    # \__$$  __|$$  __$$\\__$$  __|
    #    $$ |   $$ /  \__|  $$ |   
    #    $$ |   \$$$$$$\    $$ |   
    #    $$ |    \____$$\   $$ |   
    #    $$ |   $$\   $$ |  $$ |   
    #    $$ |   \$$$$$$  |  $$ |   
    #    \__|    \______/   \__|   

    tst = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus2-tst-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-tst-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus2-tst-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-tst-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-tst-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-tst-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-tst-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-tst-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-tst-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-tst-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-tst-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-tst-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-win-01"
      }[local.region] : null
    }

    # $$$$$$$\  $$$$$$$\  $$$$$$$\  
    # $$  __$$\ $$  __$$\ $$  __$$\ 
    # $$ |  $$ |$$ |  $$ |$$ |  $$ |
    # $$$$$$$  |$$$$$$$  |$$$$$$$  |
    # $$  ____/ $$  ____/ $$  __$$< 
    # $$ |      $$ |      $$ |  $$ |
    # $$ |      $$ |      $$ |  $$ |
    # \__|      \__|      \__|  \__|

    ppr = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus2-ppr-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-ppr-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus2-ppr-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-ppr-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-ppr-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-ppr-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-ppr-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-ppr-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-ppr-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-ppr-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-ppr-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-ppr-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-ppr-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-ppr-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-ppr-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-ppr-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-ppr-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-ppr-example-win-01"
      }[local.region] : null
    }

    # $$$$$$$\  $$$$$$$\  $$$$$$$\  
    # $$  __$$\ $$  __$$\ $$  __$$\ 
    # $$ |  $$ |$$ |  $$ |$$ |  $$ |
    # $$$$$$$  |$$$$$$$  |$$ |  $$ |
    # $$  ____/ $$  __$$< $$ |  $$ |
    # $$ |      $$ |  $$ |$$ |  $$ |
    # $$ |      $$ |  $$ |$$$$$$$  |
    # \__|      \__|  \__|\_______/ 

    prd = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus2-prd-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-prd-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus2-prd-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-prd-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-prd-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-prd-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-prd-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-prd-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-prd-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-prd-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-prd-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus2-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus2-prd-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-prd-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus2-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus2-prd-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-prd-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-prd-example-win-01"
      }[local.region] : null
    }

  }
}