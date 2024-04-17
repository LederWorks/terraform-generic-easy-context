#  $$$$$$\   $$$$$$\  $$$$$$$\         $$$$$$\  $$\       $$$$$$\  $$$$$$$\   $$$$$$\  $$\       
# $$  __$$\ $$  __$$\ $$  __$$\       $$  __$$\ $$ |     $$  __$$\ $$  __$$\ $$  __$$\ $$ |      
# $$ /  \__|$$ /  \__|$$ |  $$ |      $$ /  \__|$$ |     $$ /  $$ |$$ |  $$ |$$ /  $$ |$$ |      
# $$ |$$$$\ $$ |      $$$$$$$  |      $$ |$$$$\ $$ |     $$ |  $$ |$$$$$$$\ |$$$$$$$$ |$$ |      
# $$ |\_$$ |$$ |      $$  ____/       $$ |\_$$ |$$ |     $$ |  $$ |$$  __$$\ $$  __$$ |$$ |      
# $$ |  $$ |$$ |  $$\ $$ |            $$ |  $$ |$$ |     $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
# \$$$$$$  |\$$$$$$  |$$ |            \$$$$$$  |$$$$$$$$\ $$$$$$  |$$$$$$$  |$$ |  $$ |$$$$$$$$\ 
#  \______/  \______/ \__|             \______/ \________|\______/ \_______/ \__|  \__|\________|

locals {
  gcp_global = {

    cloud_armor = "projects/choco/global/instances/cloud-armor"

    artifact_registry = "projects/choco/locations/global/repositories/artifact-registry"

    vpc = {
      dev = "https://www.googleapis.com/compute/v1/projects/choco/global/networks/vpc-dev01"
      tst = "https://www.googleapis.com/compute/v1/projects/choco/global/networks/vpc-tst01"
      ppr = "https://www.googleapis.com/compute/v1/projects/choco/global/networks/vpc-ppr01"
      prd = "https://www.googleapis.com/compute/v1/projects/choco/global/networks/vpc-prd01"
    }[local.environment]

  }
}