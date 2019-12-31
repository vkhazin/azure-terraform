resource "azurerm_function_app" "function-app" {
  name                                = "${var.resource_group_name}-${var.function_app_name}"
  location                            = var.azure_region
  resource_group_name                 = var.resource_group_name
  app_service_plan_id                 = azurerm_app_service_plan.function-app-service-plan.id
  storage_connection_string           = var.storage_account_primary_connection_string
  https_only                          = true
  auth_settings {
    enabled                           = false
  }
  app_settings                        = var.app_settings

  site_config {
    cors {
      allowed_origins                 = var.cors_allowed_origins
    }   
  }
  depends_on                          = [
    var.dependencies
  ]
  version                             = "~2"
}