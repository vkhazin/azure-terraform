module "infra" {
  source = "./infra"

  resource-group-name             = "${var.resource-group-name}"
  azure-region                    = "${var.azure-region}"
}