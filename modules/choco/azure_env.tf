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

    # $$$$$$$\  $$$$$$$$\ $$\    $$\ 
    # $$  __$$\ $$  _____|$$ |   $$ |
    # $$ |  $$ |$$ |      $$ |   $$ |
    # $$ |  $$ |$$$$$\    \$$\  $$  |
    # $$ |  $$ |$$  __|    \$$\$$  / 
    # $$ |  $$ |$$ |        \$$$  /  
    # $$$$$$$  |$$$$$$$$\    \$  /   
    # \_______/ \________|    \_/    

    dev = {
      log_analytics_workspace_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-dev-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-dev-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-dev-example-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_linux_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-linux-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_win_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-dev-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-dev-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-dev-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-dev-example-win-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]
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
      log_analytics_workspace_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-tst-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-tst-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-tst-example-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_linux_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-linux-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_win_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-tst-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-tst-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-tst-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-tst-example-win-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]
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
      log_analytics_workspace_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-neu-ppr-example-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-ppr-example-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-gwc-ppr-example-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_linux_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-ppr-example-linux-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-ppr-example-linux-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-ppr-example-linux-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_win_id = {
        northeurope        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-neu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-neu-ppr-example-win-01"
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-ppr-example-win-01"
        germanywestcentral = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-gwc-ppr-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-gwc-ppr-example-win-01"
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]
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
      log_analytics_workspace_id = {
        northeurope        = ""
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.OperationalInsights/workspaces/laws-weu-prd-example-01"
        germanywestcentral = ""
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_linux_id = {
        northeurope        = ""
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-linux-01"
        germanywestcentral = ""
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]

      dce_win_id = {
        northeurope        = ""
        westeurope         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgrp-weu-prd-example-01/providers/Microsoft.Insights/dataCollectionEndpoints/dcep-weu-prd-example-win-01"
        germanywestcentral = ""
        frankfurt          = "frankfurt is only valid for onprem"
      }[local.region]
    }

  }
}