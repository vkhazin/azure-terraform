module "function-app-authn" {
  source = "./function-app-https"
  azure_region                              = "${var.azure_region}"
  resource_group_name                       = "${var.resource_group_name}"
  storage_account_primary_connection_string = "${module.infra.storage_account_primary_connection_string}"
  function_app_name                         = "${var.function_app_authc_name}"
}