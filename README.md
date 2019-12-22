# Azure Terraform

## Overview

* Terraform templates: one file per template
* Cosmos DB account
* Cosmos DB database
* Cosmos DB container with ttl settings
* Azure function app with Http Trigger
* Hard-code nothing in the templates: use variables only
* Outcome of **a repeatable automation** should match the steps outlined here: https://github.com/vkhazin/azure-authz-svc

## Usage

* For Cosmos DB container creation, we need to pass unique key parameters in the command: terraform apply -var='unique_key_list=["/uniquekey1","/uniquekey2"]'
* Also, for passing the partition_key_name in Cosmos DB Container creation, need to specify the key name with a forward slash
