resource "azurerm_resource_group" "azure_resource_group" {
  name     = var.RESOURCE_GROUP
  location = var.LOCATION
  tags = {
    Username = var.OWNER_EMAIL
  }
}
