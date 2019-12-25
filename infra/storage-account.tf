resource "azurerm_storage_account" "storage-account" {
  name                      = "${var.storage_account_name}"
  resource_group_name       = "${var.resource_group_name}"
  location                  = "${var.azure_region}"
  account_tier              = "Standard"
  account_kind              = "StorageV2"
  account_replication_type  = "LRS"
  enable_blob_encryption    = true
  enable_file_encryption    = true
  enable_https_traffic_only = true
}