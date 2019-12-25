variable "azure_region" {}
variable "resource_group_name" {}
variable "storage_account_name" {}

output "storage_account_primary_connection_string" {
  value = "${azurerm_storage_account.storage-account.primary_connection_string}"
}
