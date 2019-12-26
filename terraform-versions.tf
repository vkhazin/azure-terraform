terraform {
  required_version = ">=0.12"
}

provider "azurerm" {
  version = ">= 1.3.3"
}

provider "null" {
  version = "~> 2.1"
}