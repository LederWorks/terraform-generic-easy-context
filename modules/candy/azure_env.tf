#  $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$\  $$$$$$$$\       $$$$$$$$\ $$\   $$\ $$\    $$\ 
# $$  __$$\ \____$$  |$$ |  $$ |$$  __$$\ $$  _____|      $$  _____|$$$\  $$ |$$ |   $$ |
# $$ /  $$ |    $$  / $$ |  $$ |$$ |  $$ |$$ |            $$ |      $$$$\ $$ |$$ |   $$ |
# $$$$$$$$ |   $$  /  $$ |  $$ |$$$$$$$  |$$$$$\          $$$$$\    $$ $$\$$ |\$$\  $$  |
# $$  __$$ |  $$  /   $$ |  $$ |$$  __$$< $$  __|         $$  __|   $$ \$$$$ | \$$\$$  / 
# $$ |  $$ | $$  /    $$ |  $$ |$$ |  $$ |$$ |            $$ |      $$ |\$$$ |  \$$$  /  
# $$ |  $$ |$$$$$$$$\ \$$$$$$  |$$ |  $$ |$$$$$$$$\       $$$$$$$$\ $$ | \$$ |   \$  /   
# \__|  \__|\________| \______/ \__|  \__|\________|      \________|\__|  \__|    \_/    

locals {
  #Subsidiary 01 Azure Environment specific values
  azure_env = {

    int = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-int-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus-int-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-int-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-int-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-int-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus-int-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-dev-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-dev-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-dev-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-int-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-int-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-int-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-int-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-int-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-int-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-int-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-win-01"
      }[local.region] : null
    }

    uat = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-uat-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus-uat-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-uat-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-uat-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-uat-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus-uat-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-tst-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-tst-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-tst-example-01"
      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-uat-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-uat-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-uat-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-uat-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-uat-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-uat-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-uat-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-win-01"
      }[local.region] : null
    }

    prd = {
      log_analytics_workspace_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-eus-prd-example-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-cus-prd-example-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-wus-prd-example-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-prd-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-prd-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-prd-example-01"

      }[local.region] : null

      dce_linux_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-prd-example-linux-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-prd-example-linux-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-prd-example-linux-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-prd-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-prd-example-linux-01"
      }[local.region] : null

      dce_win_id = local.is_valid_azure_region ? {
        eastus             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-eus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-eus-prd-example-win-01"
        centralus          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-cus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-cus-prd-example-win-01"
        westus2            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-wus-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-wus-prd-example-win-01"
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-prd-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-prd-example-win-01"
      }[local.region] : null
    }
  }
}