variable "azure_region" {}
variable "resource_group_name" {}
variable "function_app_name" {}
variable "storage_account_primary_connection_string" {}
variable "app_settings" {}
variable "dependencies" {}
variable "cors_allowed_origins" {
  type = list
}
variable "source_url" {}
variable "source_branch" {}

