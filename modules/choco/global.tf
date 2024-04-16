#  $$$$$$\  $$\       $$$$$$\  $$$$$$$\   $$$$$$\  $$\       
# $$  __$$\ $$ |     $$  __$$\ $$  __$$\ $$  __$$\ $$ |      
# $$ /  \__|$$ |     $$ /  $$ |$$ |  $$ |$$ /  $$ |$$ |      
# $$ |$$$$\ $$ |     $$ |  $$ |$$$$$$$\ |$$$$$$$$ |$$ |      
# $$ |\_$$ |$$ |     $$ |  $$ |$$  __$$\ $$  __$$ |$$ |      
# $$ |  $$ |$$ |     $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
# \$$$$$$  |$$$$$$$$\ $$$$$$  |$$$$$$$  |$$ |  $$ |$$$$$$$$\ 
#  \______/ \________|\______/ \_______/ \__|  \__|\________|

locals {
  global = {
    site = "https://choco.me/"

    azure_devops = {
      CHOCO-01 = {
        name = "CHOCO-01"
        url  = "https://dev.azure.com/CHOCO-01/"
      }
      CHOCO-02 = {
        name = "CHOCO-01"
        url  = "https://dev.azure.com/CHOCO-02/"
      }
    }

    github = {
      CHOCO-01 = {
        name = "CHOCO-01"
        url  = "https://github.com/CHOCO-01/"
      }
      CHOCO-02 = {
        name = "CHOCO-02"
        url  = "https://github.com/CHOCO-02/"
      }
    }
  }
}