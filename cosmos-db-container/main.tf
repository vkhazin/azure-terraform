data "azurerm_cosmosdb_account" "cosmosdb" {
  name                = var.cosmosaccount_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_cosmosdb_sql_database" "cosmosdb" {
  name                = var.cosmosdatabase_name
  resource_group_name = data.azurerm_cosmosdb_account.cosmosdb.resource_group_name
  account_name        = data.azurerm_cosmosdb_account.cosmosdb.name
}

resource "azurerm_cosmosdb_sql_container" "cosmosdb" {
  name                = var.cosmos_container_name
  resource_group_name = data.azurerm_cosmosdb_account.cosmosdb.resource_group_name
  account_name        = data.azurerm_cosmosdb_account.cosmosdb.name
  database_name       = "${azurerm_cosmosdb_sql_database.cosmosdb.name}"
  partition_key_path  = var.partition_key_name

  unique_key {
    paths = var.unique_key_list
  }
  provisioner "local-exec" {    
    command = "az cosmosdb sql container update --account-name ${var.cosmosaccount_name} --database-name ${var.cosmosdatabase_name} --name ${var.cosmos_container_name} --resource-group ${var.resource_group_name} --ttl ${var.time_to_live}" 
  }
}