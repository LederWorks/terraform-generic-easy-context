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
    site = "https://candy.me/"

    azure_devops = {
      CANDY-01 = {
        name = "CANDY-01"
        url  = "https://dev.azure.com/CANDY-01/"
      }
      CANDY-02 = {
        name = "CANDY-02"
        url  = "https://dev.azure.com/CANDY-02/"
      }
    }

    github = {
      CANDY-01 = {
        name = "CANDY-01"
        url  = "https://github.com/CANDY-01/"
      }
      CANDY-02 = {
        name = "CANDY-02"
        url  = "https://github.com/CANDY-02/"
      }
    }
  }
}