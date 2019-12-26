resource "azurerm_app_service_plan" "function-app-service-plan" {
  name                      = "sp-${var.function_app_name}"
  location                  = var.azure_region
  resource_group_name       = var.resource_group_name
  kind                      = "FunctionApp"

  sku {
    tier                    = "Dynamic"
    size                    = "Y1"
  }
  depends_on                = [
    var.dependencies
  ]
}