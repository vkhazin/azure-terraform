# Azure Terraform Environment

## Overview

* Terraform setup of Azure Environment
* Suitable for a production-like environment setup or for ci/cd environment initialization

## Azure Portal Setup

* Create a new `resource group`, `storage account` and `container` for the [remote state](./remote-state.tf)

## Local Setup

* Install terraform: `chmod +x ./scripts/* && ./scripts/setup-ubuntu-18.04.sh`


## Usage

* For Cosmos DB container creation, we need to pass unique key parameters in the command: terraform apply -var='unique_key_list=["/uniquekey1","/uniquekey2"]'
* Also, for passing the partition_key_name in Cosmos DB Container creation, need to specify the key name with a forward slash
