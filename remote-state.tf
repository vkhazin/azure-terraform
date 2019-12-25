terraform {
  backend "azurerm" {
    resource_group_name  = "rg-cicd-poc"
    storage_account_name = "stcdcidpoc"
    container_name       = "terraform-state"
    key                  = "poc"
  }
}