variable "resource_group_name" {
  description = "Resource group name that the CosmosDB account is placed in."
  type        = string
}

variable "cosmosaccount_name" {
  description = "The name of CosmosDB account under which DB will be created."
  type        = string
}

variable "cosmosdatabase_name"{
  description = "Name of Cosmos SQL database you want to create."
  type        = string
}

variable "time_to_live" {
  description = "Time to live"
  type        = number   
}

variable "cosmos_container_name" {
  description = "Enter name of Cosmos container."
  type        = string
}

variable "partition_key_name" {
  description = "Enter partition key path."
  type        = string  
}

variable "unique_key_list" {
  description = "Enter unique key list."
  type        = list(string)
}
