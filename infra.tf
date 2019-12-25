module "infra" {
  source = "./infra"

  azure_region                    = "${var.azure_region}"
  resource_group_name             = "${var.resource_group_name}"
  storage_account_name            = "${var.storage_account_name}"
}