resource "azurerm_virtual_network" "vnet" {
  address_space       = [var.vnet_address_prefix]
  name                = "vnet"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
}

