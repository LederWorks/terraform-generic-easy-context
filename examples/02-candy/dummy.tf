#Resource Group
resource "azurerm_resource_group" "rgrp" {
  name     = "rgrp-tde3-ic-terratest-context-candy"
  location = "germanywestcentral"
}
output "resource_group_name" {
  value = azurerm_resource_group.rgrp.name
}
