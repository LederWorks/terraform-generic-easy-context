#  $$$$$$\   $$$$$$\  $$$$$$$\        $$$$$$$$\ $$\   $$\ $$\    $$\ 
# $$  __$$\ $$  __$$\ $$  __$$\       $$  _____|$$$\  $$ |$$ |   $$ |
# $$ /  \__|$$ /  \__|$$ |  $$ |      $$ |      $$$$\ $$ |$$ |   $$ |
# $$ |$$$$\ $$ |      $$$$$$$  |      $$$$$\    $$ $$\$$ |\$$\  $$  |
# $$ |\_$$ |$$ |      $$  ____/       $$  __|   $$ \$$$$ | \$$\$$  / 
# $$ |  $$ |$$ |  $$\ $$ |            $$ |      $$ |\$$$ |  \$$$  /  
# \$$$$$$  |\$$$$$$  |$$ |            $$$$$$$$\ $$ | \$$ |   \$  /   
#  \______/  \______/ \__|            \________|\__|  \__|    \_/    

locals {
  gcp_env = {
    #DEV
    dev = {
      pubsub_topic = local.is_valid_gcp_region ? {
        us-central1  = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-us-central1"
        us-east1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-us-east1"
        us-west1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-us-west1"
        europe-west1 = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-europe-west1"
        europe-west2 = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-europe-west2"
        europe-west3 = "https://pubsub.googleapis.com/v1/projects/choco/topics/dev-europe-west3"
      }[local.region] : null

      cloud_run = local.is_valid_gcp_region ? {
        us-central1  = "https://run.googleapis.com/v1/projects/choco/locations/us-central1/services/runner01 "
        us-east1     = "https://run.googleapis.com/v1/projects/choco/locations/us-east1/services/runner01"
        us-west1     = "https://run.googleapis.com/v1/projects/choco/locations/us-west1/services/runner01"
        europe-west1 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west1/services/runner01"
        europe-west2 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west2/services/runner01"
        europe-west3 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west3/services/runner01"
      }[local.region] : null
    }

    #TST
    tst = {
      pubsub_topic = local.is_valid_gcp_region ? {
        us-central1  = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-us-central1"
        us-east1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-us-east1"
        us-west1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-us-west1"
        europe-west1 = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-europe-west1"
        europe-west2 = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-europe-west2"
        europe-west3 = "https://pubsub.googleapis.com/v1/projects/choco/topics/tst-europe-west3"
      }[local.region] : null

      cloud_run = local.is_valid_gcp_region ? {
        us-central1  = "https://run.googleapis.com/v1/projects/choco/locations/us-central1/services/tst-us-central1"
        us-east1     = "https://run.googleapis.com/v1/projects/choco/locations/us-east1/services/tst-us-east1"
        us-west1     = "https://run.googleapis.com/v1/projects/choco/locations/us-west1/services/tst-us-west1"
        europe-west1 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west1/services/tst-europe-west1"
        europe-west2 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west2/services/tst-europe-west2"
        europe-west3 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west3/services/tst-europe-west3"
      }[local.region] : null
    }

    #PPR
    ppr = {
      pubsub_topic = local.is_valid_gcp_region ? {
        us-central1  = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-us-central1"
        us-east1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-us-east1"
        us-west1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-us-west1"
        europe-west1 = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-europe-west1"
        europe-west2 = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-europe-west2"
        europe-west3 = "https://pubsub.googleapis.com/v1/projects/choco/topics/ppr-europe-west3"
      }[local.region] : null

      cloud_run = local.is_valid_gcp_region ? {
        us-central1  = "https://run.googleapis.com/v1/projects/choco/locations/us-central1/services/ppr-us-central1"
        us-east1     = "https://run.googleapis.com/v1/projects/choco/locations/us-east1/services/ppr-us-east1"
        us-west1     = "https://run.googleapis.com/v1/projects/choco/locations/us-west1/services/ppr-us-west1"
        europe-west1 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west1/services/ppr-europe-west1"
        europe-west2 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west2/services/ppr-europe-west2"
        europe-west3 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west3/services/ppr-europe-west3"
      }[local.region] : null
    }

    #PRD
    prd = {
      pubsub_topic = local.is_valid_gcp_region ? {
        us-central1  = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-us-central1"
        us-east1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-us-east1"
        us-west1     = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-us-west1"
        europe-west1 = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-europe-west1"
        europe-west2 = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-europe-west2"
        europe-west3 = "https://pubsub.googleapis.com/v1/projects/choco/topics/prd-europe-west3"
      }[local.region] : null

      cloud_run = local.is_valid_gcp_region ? {
        us-central1  = "https://run.googleapis.com/v1/projects/choco/locations/us-central1/services/prd-us-central1"
        us-east1     = "https://run.googleapis.com/v1/projects/choco/locations/us-east1/services/prd-us-east1"
        us-west1     = "https://run.googleapis.com/v1/projects/choco/locations/us-west1/services/prd-us-west1"
        europe-west1 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west1/services/prd-europe-west1"
        europe-west2 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west2/services/prd-europe-west2"
        europe-west3 = "https://run.googleapis.com/v1/projects/choco/locations/europe-west3/services/prd-europe-west3"
      }[local.region] : null
    }
  }
}