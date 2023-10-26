resource "azurerm_storage_account" "azure_storage_account" {
  resource_group_name             = azurerm_resource_group.azure_resource_group.name
  location                        = azurerm_resource_group.azure_resource_group.location
  name                            = "${random_integer.random_number.result}sadelete"
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  enable_https_traffic_only       = true
  min_tls_version                 = "TLS1_2"
  public_network_access_enabled   = false
  allow_nested_items_to_be_public = false
  blob_properties {
    last_access_time_enabled = true
    delete_retention_policy {
      days = 5
    }
  }
  queue_properties {
    logging {
      delete                = true
      read                  = true
      write                 = true
      version               = "1.0"
      retention_policy_days = 10
    }
  }
}

resource "azurerm_private_endpoint" "private_endpoint_blob" {
  name                = "pe-blob-pep"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
  subnet_id           = azurerm_subnet.internal_subnet.id

  private_service_connection {
    name                           = "psc-blob-psc"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_storage_account.azure_storage_account.id
    subresource_names              = ["blob"]
  }

}
