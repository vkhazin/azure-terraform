module "function-app-authn" {
  source = "./function-app-https"
  azure_region                              = "${var.azure_region}"
  resource_group_name                       = "${var.resource_group_name}"
  storage_account_primary_connection_string = "${module.infra.storage_account_primary_connection_string}"
  function_app_name                         = "${var.function_app_authc_name}"
  dependencies                              = "${module.infra.resource_group}"
  app_settings                              = {
    AppClientId                             = var.function_app_authc_AppClientId
    ClientSecret                            = var.function_app_authc_ClientSecret
    FUNCTIONS_EXTENSION_VERSION             = "~2"
    WEBSITE_RUN_FROM_PACKAGE                = 1
    FUNCTIONS_WORKER_RUNTIME                = "dotnet"
    WEBSITE_USE_ZIP                         = "https://bitbucket.org/vktrp/azuread-authn-svc/downloads/trgos-authentication-${var.function_app_authc_version}.zip"
  }
  cors_allowed_origins                      = ["*"]
}