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
}