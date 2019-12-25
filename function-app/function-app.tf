resource "azurerm_function_app" "function-app" {
  name                      = "${var.resource_group_name}-${var.function_app_name}"
  location                  = "${var.azure_region}"
  resource_group_name       = "${var.resource_group_name}"
  app_service_plan_id       = "${azurerm_app_service_plan.funcapp.id}"
  storage_connection_string = "${azurerm_storage_account.funcapp.primary_connection_string}"
  client_affinity_enabled   = "${var.client_affinity_enabled}"
  version                   = "${var.func_version}"
  app_settings              = "${var.app_settings}"

}