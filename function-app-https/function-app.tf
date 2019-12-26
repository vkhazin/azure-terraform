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

# Source code deployment, forced on appy
# https://stackoverflow.com/questions/56495574/how-can-i-deploy-an-function-app-in-azure-from-a-remote-git-using-terraform
# resource "null_resource" "deployment" {
#   triggers = {
#     always_run = "${timestamp()}"
#   }

#   provisioner "local-exec" {
#     command = "az functionapp deployment source config --ids ${azurerm_function_app.function-app.id} --repo-url ${var.source_url} --branch ${var.source_branch} --manual-integration"
#     }
# }