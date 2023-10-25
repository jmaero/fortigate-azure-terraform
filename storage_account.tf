resource "azurerm_storage_account" "azure_storage_account" {
  resource_group_name           = azurerm_resource_group.azure_resource_group.name
  location                      = azurerm_resource_group.azure_resource_group.location
  name                          = "${random_integer.random_number.result}sa"
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  enable_https_traffic_only     = true
  min_tls_version               = "TLS1_2"
  public_network_access_enabled = false
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
