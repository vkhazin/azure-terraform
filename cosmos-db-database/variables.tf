variable "resource_group_name" {
  description = "Resource group name that the CosmosDB account is placed in."
  type        = string
}

variable "cosmosaccount_name" {
  description = "The name of CosmosDB account under which DB will be created."
  type        = string
}

variable "cosmosdatabase_name"{
  description = "Name of Cosmos mongo database you want to create."
  type        = string
}