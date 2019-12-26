variable "azure_region" {}
variable "resource_group_name" {}
variable "storage_account_name" {}

output "resource_group" {
  value = "${azurerm_resource_group.resource-group}"
}
output "storage_account_primary_connection_string" {
  value = "${azurerm_storage_account.storage-account.primary_connection_string}"
}
