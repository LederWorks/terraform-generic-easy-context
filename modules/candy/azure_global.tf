#  $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$\  $$$$$$$$\        $$$$$$\  $$\       $$$$$$\  $$$$$$$\   $$$$$$\  $$\       
# $$  __$$\ \____$$  |$$ |  $$ |$$  __$$\ $$  _____|      $$  __$$\ $$ |     $$  __$$\ $$  __$$\ $$  __$$\ $$ |      
# $$ /  $$ |    $$  / $$ |  $$ |$$ |  $$ |$$ |            $$ /  \__|$$ |     $$ /  $$ |$$ |  $$ |$$ /  $$ |$$ |      
# $$$$$$$$ |   $$  /  $$ |  $$ |$$$$$$$  |$$$$$\          $$ |$$$$\ $$ |     $$ |  $$ |$$$$$$$\ |$$$$$$$$ |$$ |      
# $$  __$$ |  $$  /   $$ |  $$ |$$  __$$< $$  __|         $$ |\_$$ |$$ |     $$ |  $$ |$$  __$$\ $$  __$$ |$$ |      
# $$ |  $$ | $$  /    $$ |  $$ |$$ |  $$ |$$ |            $$ |  $$ |$$ |     $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
# $$ |  $$ |$$$$$$$$\ \$$$$$$  |$$ |  $$ |$$$$$$$$\       \$$$$$$  |$$$$$$$$\ $$$$$$  |$$$$$$$  |$$ |  $$ |$$$$$$$$\ 
# \__|  \__|\________| \______/ \__|  \__|\________|       \______/ \________|\______/ \_______/ \__|  \__|\________|

locals {
  #Azure Global values
  azure_global = {

    #Proxies
    http_proxy = "http://proxy.azure.candy.me:8083/"

    #Firewalls
    firewall_egress = [
      "10.20.30.40/27",
      "40.50.60.70/27"
    ]

    #Images
    images = {
      rhel_8 = {
        name                = "rhel_8"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }

      rhel_9 = {
        name                = "rhel_9"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }

      ubuntu_2004 = {
        name                = "ubuntu_2004"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }

      ubuntu_2204 = {
        name                = "ubuntu_2204"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }

      windows_2019 = {
        name                = "windows_2019"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }

      windows_2022 = {
        name                = "windows_2022"
        gallery_name        = "example"
        resource_group_name = "example"
        subscription_id     = "00000000-0000-0000-0000-000000000000"
      }
    }

  }
}