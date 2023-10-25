resource "azurerm_virtual_network" "vnet" {
  address_space       = [var.vnet_address_prefix]
  name                = "vnet"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.ddos_protection_plan.id
    enable = true
  }
}

resource "azurerm_network_ddos_protection_plan" "ddos_protection_plan" {
  name                = "ddos_protection_plan"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
}
